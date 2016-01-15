//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnUpgradeImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/vals/a2ios/amfibian/impl/AnOrmImpl.h"
#include "com/vals/a2ios/amfibian/impl/AnUpgradeImpl.h"
#include "com/vals/a2ios/amfibian/intf/AnSql.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterDb.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterRs.h"
#include "java/lang/Exception.h"
#include "java/lang/Long.h"
#include "java/util/Date.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface AnUpgradeImpl () {
 @public
  id<JavaUtilMap> map_;
  id<SQLighterDb> sqlighterDb_;
  AnOrmImpl *ap_;
}

- (void)ensureStorage;

- (void)applyUpdateWithNSString:(NSString *)key
               withJavaUtilList:(id<JavaUtilList>)statementList;

@end

J2OBJC_FIELD_SETTER(AnUpgradeImpl, map_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(AnUpgradeImpl, sqlighterDb_, id<SQLighterDb>)
J2OBJC_FIELD_SETTER(AnUpgradeImpl, ap_, AnOrmImpl *)

__attribute__((unused)) static void AnUpgradeImpl_ensureStorage(AnUpgradeImpl *self);

__attribute__((unused)) static void AnUpgradeImpl_applyUpdateWithNSString_withJavaUtilList_(AnUpgradeImpl *self, NSString *key, id<JavaUtilList> statementList);

@interface AnUpgradeImpl_Upgrade () {
 @public
  NSString *key_;
  NSString *value_;
  JavaUtilDate *createDate_;
}

@end

J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, key_, NSString *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, value_, NSString *)
J2OBJC_FIELD_SETTER(AnUpgradeImpl_Upgrade, createDate_, JavaUtilDate *)

@implementation AnUpgradeImpl

- (instancetype)initWithSQLighterDb:(id<SQLighterDb>)sqLighterDb {
  AnUpgradeImpl_initWithSQLighterDb_(self, sqLighterDb);
  return self;
}

- (NSString *)getTableName {
  return AnUpgradeImpl_Upgrade_TABLE_;
}

- (void)ensureStorage {
  AnUpgradeImpl_ensureStorage(self);
}

- (id<JavaUtilSet>)getAppliedUpdates {
  id<JavaUtilSet> keys = new_JavaUtilHashSet_init();
  id<SQLighterRs> rs = [((id<SQLighterDb>) nil_chk(sqlighterDb_)) executeSelectWithNSString:JreStrcat("$$$", @"select key from ", AnUpgradeImpl_Upgrade_TABLE_, @" where value is not null")];
  while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
    NSString *key = [rs getStringWithInt:0];
    [keys addWithId:key];
  }
  [rs close];
  return keys;
}

- (jint)applyUpdates {
  jint taskCount = 0;
  id<JavaUtilSet> appliedKeys = [self getAppliedUpdates];
  for (NSString * __strong updKey in nil_chk([self getUpdateKeys])) {
    if (![((id<JavaUtilSet>) nil_chk(appliedKeys)) containsWithId:updKey]) {
      AnUpgradeImpl_applyUpdateWithNSString_withJavaUtilList_(self, updKey, [self getTaskByKeyWithNSString:updKey]);
      taskCount++;
    }
  }
  return taskCount;
}

- (void)applyUpdateWithNSString:(NSString *)key
               withJavaUtilList:(id<JavaUtilList>)statementList {
  AnUpgradeImpl_applyUpdateWithNSString_withJavaUtilList_(self, key, statementList);
}

@end

void AnUpgradeImpl_initWithSQLighterDb_(AnUpgradeImpl *self, id<SQLighterDb> sqLighterDb) {
  (void) NSObject_init(self);
  self->sqlighterDb_ = sqLighterDb;
  self->ap_ = new_AnOrmImpl_initWithSQLighterDb_withNSString_withIOSClass_withNSStringArray_withAnObject_(sqLighterDb, [self getTableName], AnUpgradeImpl_Upgrade_class_(), [IOSObjectArray newArrayWithObjects:(id[]){ @"key", @"value", @"createDate,create_date" } count:3 type:NSString_class_()], nil);
  AnUpgradeImpl_ensureStorage(self);
}

void AnUpgradeImpl_ensureStorage(AnUpgradeImpl *self) {
  id<SQLighterRs> rs = [((id<SQLighterDb>) nil_chk(self->sqlighterDb_)) executeSelectWithNSString:@"SELECT name FROM sqlite_master WHERE type='table' ORDER BY name"];
  jboolean isFound = false;
  while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
    NSString *tableName = [rs getStringWithInt:0];
    if ([((NSString *) nil_chk(tableName)) isEqual:[self getTableName]]) {
      isFound = true;
      break;
    }
  }
  [rs close];
  if (!isFound) {
    NSString *createSql = [((id<AnSql>) nil_chk([((AnOrmImpl *) nil_chk(self->ap_)) startSqlCreate])) getQueryString];
    (void) [self->sqlighterDb_ executeChangeWithNSString:createSql];
  }
}

void AnUpgradeImpl_applyUpdateWithNSString_withJavaUtilList_(AnUpgradeImpl *self, NSString *key, id<JavaUtilList> statementList) {
  [((id<SQLighterDb>) nil_chk(self->sqlighterDb_)) beginTransaction];
  for (id __strong task in nil_chk(statementList)) {
    NSString *sqlStr = nil;
    if ([task isKindOfClass:[NSString class]]) {
      sqlStr = (NSString *) check_class_cast(task, [NSString class]);
      (void) [self->sqlighterDb_ executeChangeWithNSString:sqlStr];
    }
    else if ([AnSql_class_() isInstance:task]) {
      AnOrmImpl *sql = (AnOrmImpl *) check_class_cast(task, [AnOrmImpl class]);
      [((AnOrmImpl *) nil_chk(sql)) setSqlighterDbWithSQLighterDb:self->sqlighterDb_];
      (void) [sql startSqlCreate];
      sqlStr = [sql getQueryString];
      (void) [self->sqlighterDb_ executeChangeWithNSString:sqlStr];
    }
    AnUpgradeImpl_Upgrade *appUpdate = new_AnUpgradeImpl_Upgrade_init();
    [appUpdate setKeyWithNSString:key];
    [appUpdate setValueWithNSString:sqlStr];
    [appUpdate setCreateDateWithJavaUtilDate:new_JavaUtilDate_init()];
    [((AnOrmImpl *) nil_chk(self->ap_)) startSqlInsertWithId:appUpdate];
    (void) [self->ap_ apply];
  }
  AnUpgradeImpl_Upgrade *appUpdateMark = new_AnUpgradeImpl_Upgrade_init();
  [appUpdateMark setKeyWithNSString:key];
  [((AnOrmImpl *) nil_chk(self->ap_)) startSqlInsertWithId:appUpdateMark];
  (void) [self->ap_ apply];
  [self->sqlighterDb_ commitTransaction];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AnUpgradeImpl)

NSString *AnUpgradeImpl_Upgrade_TABLE_ = @"app_db_maint";

@implementation AnUpgradeImpl_Upgrade

- (NSString *)getKey {
  return key_;
}

- (void)setKeyWithNSString:(NSString *)key {
  self->key_ = key;
}

- (NSString *)getValue {
  return value_;
}

- (void)setValueWithNSString:(NSString *)value {
  self->value_ = value;
}

- (JavaUtilDate *)getCreateDate {
  return createDate_;
}

- (void)setCreateDateWithJavaUtilDate:(JavaUtilDate *)createDate {
  self->createDate_ = createDate;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AnUpgradeImpl_Upgrade_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

@end

void AnUpgradeImpl_Upgrade_init(AnUpgradeImpl_Upgrade *self) {
  (void) NSObject_init(self);
}

AnUpgradeImpl_Upgrade *new_AnUpgradeImpl_Upgrade_init() {
  AnUpgradeImpl_Upgrade *self = [AnUpgradeImpl_Upgrade alloc];
  AnUpgradeImpl_Upgrade_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AnUpgradeImpl_Upgrade)
