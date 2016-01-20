package com.vals.a2ios.amfibian.impl;

import com.vals.a2ios.amfibian.intf.AnSql;
import com.vals.a2ios.amfibian.intf.AnUpgrade;
import com.vals.a2ios.sqlighter.intf.SQLighterDb;
import com.vals.a2ios.sqlighter.intf.SQLighterRs;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by vsayenko on 12/18/15.
 */
public abstract class AnUpgradeImpl implements AnUpgrade {

    private Map<Integer, List<String>> map;
    private SQLighterDb sqlighterDb;
    private AnOrmImpl<Upgrade> ap;

    /**
     *
     * @param sqLighterDb
     * @throws Exception
     */
    public AnUpgradeImpl(SQLighterDb sqLighterDb) throws Exception {
        this.sqlighterDb = sqLighterDb;
        ap = new AnOrmImpl<>(
                sqLighterDb,
                getTableName(),
                Upgrade.class,
                new String[] {"key","value","createDate,create_date"},
                null);
        ensureStorage();
    }

    /**
     *
     * @param key
     * @return
     */
    public abstract List<Object> getTasksByKey(String key);

    /**
     *
     * @return
     */
    public abstract List<String> getUpdateKeys();

    /**
     *
     * @return
     */
    protected String getTableName() {
        return Upgrade.TABLE;
    }

    /**
     *
     * @throws Exception
     */
    private void ensureStorage() throws Exception {
        SQLighterRs rs = sqlighterDb.executeSelect(
                "SELECT name FROM sqlite_master " +
                "WHERE type='table' " +
                "ORDER BY name");
        boolean isFound = false;
        while (rs.hasNext()) {
            String tableName = rs.getString(0);
            if (tableName.equals(getTableName())) {
                isFound = true;
                break;
            }
        }
        rs.close();
        if (!isFound) {
            String createSql = ap.startSqlCreate().getQueryString();
            sqlighterDb.executeChange(createSql);
        }
    }

    /**
     *
     * @return
     * @throws Exception
     */
    public Set<String> getAppliedUpdates() throws Exception {
        Set<String> keys = new HashSet<>();
        SQLighterRs rs = sqlighterDb.executeSelect("select key from " + Upgrade.TABLE + " where value is not null");
        while (rs.hasNext()) {
            String key = rs.getString(0);
            keys.add(key);
        }
        rs.close();
        return keys;
    }

    /**
     *
     * @throws Exception
     */
    @Override
    public int applyUpdates() throws Exception {
        int taskCount = 0;
        Set<String> appliedKeys = getAppliedUpdates();
        for (String updKey: getUpdateKeys()) {
            if(!appliedKeys.contains(updKey)) {
                applyUpdate(updKey, getTasksByKey(updKey));
                taskCount++;
            }
        }
        return taskCount;
    }

    /**
     *
     * @param key
     * @param statementList
     * @throws Exception
     */
    private void applyUpdate(String key, List<Object> statementList) throws Exception {
        sqlighterDb.beginTransaction();

        for (Object task: statementList) {
            String sqlStr = null;
            if (task instanceof String) {
                sqlStr = (String) task;
                sqlighterDb.executeChange(sqlStr);
            } else if (task instanceof AnSql<?>) {
                AnOrmImpl<?> sql = (AnOrmImpl<?>)task;
                sql.setSqlighterDb(sqlighterDb);
                sql.startSqlCreate();
                sqlStr = sql.getQueryString();
                sqlighterDb.executeChange(sqlStr);
            }
            Upgrade appUpdate = new Upgrade();
            appUpdate.setKey(key);
            appUpdate.setValue(sqlStr);
            appUpdate.setCreateDate(new Date());
            ap.startSqlInsert(appUpdate);
            ap.apply();
        }

        Upgrade appUpdateMark = new Upgrade();
        appUpdateMark.setKey(key);
        ap.startSqlInsert(appUpdateMark);
        ap.apply();

        sqlighterDb.commitTransaction();
    }

    /**
     * Created by vsayenko on 12/23/15.
     */
    public static class Upgrade {

        public static final String TABLE = "app_db_maint";

        private String key;
        private String value;
        private Date createDate;

        public String getKey() {
            return key;
        }

        public void setKey(String key) {
            this.key = key;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }

        public Date getCreateDate() {
            return createDate;
        }

        public void setCreateDate(Date createDate) {
            this.createDate = createDate;
        }
    }
}