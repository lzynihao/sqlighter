//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnSqlImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/vals/a2ios/amfibian/impl/AnObjectImpl.h"
#include "com/vals/a2ios/amfibian/impl/AnSqlImpl.h"
#include "com/vals/a2ios/amfibian/intf/AnAttrib.h"
#include "com/vals/a2ios/amfibian/intf/AnObject.h"
#include "com/vals/a2ios/amfibian/intf/AnSql.h"
#include "java/lang/Double.h"
#include "java/lang/Exception.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Short.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Date.h"
#include "java/util/HashSet.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface AnSqlImpl () {
 @public
  id<AnAttrib_CustomConverter> dbCustomSetConverter_;
  id<AnAttrib_CustomConverter> dbCustomGetConverter_;
  id<JavaUtilList> attribNameList_;
  id<JavaUtilList> parameters_;
  JavaLangStringBuilder *whereClause_;
  JavaLangStringBuilder *queryStr_;
  jboolean isWhere_;
  JavaLangStringBuilder *insertParamClause_;
  id<JavaUtilSet> skipAttrNameList_;
  id<JavaUtilSet> inclAttrNameList_;
  jint type_;
  NSString *columnClause_;
  NSString *alias_;
}

- (void)reset;

- (NSString *)getAlias;

- (NSString *)ensureFirstConditionWithNSString:(NSString *)condition;

@end

J2OBJC_FIELD_SETTER(AnSqlImpl, dbCustomSetConverter_, id<AnAttrib_CustomConverter>)
J2OBJC_FIELD_SETTER(AnSqlImpl, dbCustomGetConverter_, id<AnAttrib_CustomConverter>)
J2OBJC_FIELD_SETTER(AnSqlImpl, attribNameList_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(AnSqlImpl, parameters_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(AnSqlImpl, whereClause_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(AnSqlImpl, queryStr_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(AnSqlImpl, insertParamClause_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(AnSqlImpl, skipAttrNameList_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(AnSqlImpl, inclAttrNameList_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(AnSqlImpl, columnClause_, NSString *)
J2OBJC_FIELD_SETTER(AnSqlImpl, alias_, NSString *)

static id<AnAttrib_CustomConverter> AnSqlImpl_sqlCustomSetGlobalConverter_;
J2OBJC_STATIC_FIELD_GETTER(AnSqlImpl, sqlCustomSetGlobalConverter_, id<AnAttrib_CustomConverter>)
J2OBJC_STATIC_FIELD_SETTER(AnSqlImpl, sqlCustomSetGlobalConverter_, id<AnAttrib_CustomConverter>)

static id<AnAttrib_CustomConverter> AnSqlImpl_sqlCustomGetGlobalConverter_;
J2OBJC_STATIC_FIELD_GETTER(AnSqlImpl, sqlCustomGetGlobalConverter_, id<AnAttrib_CustomConverter>)
J2OBJC_STATIC_FIELD_SETTER(AnSqlImpl, sqlCustomGetGlobalConverter_, id<AnAttrib_CustomConverter>)

__attribute__((unused)) static void AnSqlImpl_reset(AnSqlImpl *self);

__attribute__((unused)) static NSString *AnSqlImpl_getAlias(AnSqlImpl *self);

__attribute__((unused)) static NSString *AnSqlImpl_ensureFirstConditionWithNSString_(AnSqlImpl *self, NSString *condition);

@implementation AnSqlImpl

- (instancetype)initWithNSString:(NSString *)tableName
                    withIOSClass:(IOSClass *)anObjClass
               withAnAttribArray:(IOSObjectArray *)attribList
                    withAnObject:(id<AnObject>)parentAnObject {
  AnSqlImpl_initWithNSString_withIOSClass_withAnAttribArray_withAnObject_(self, tableName, anObjClass, attribList, parentAnObject);
  return self;
}

- (instancetype)initWithNSString:(NSString *)tableName
                    withIOSClass:(IOSClass *)anObjClass
               withNSStringArray:(IOSObjectArray *)attribColumnList
                    withAnObject:(id<AnObject>)parentAnObject {
  AnSqlImpl_initWithNSString_withIOSClass_withNSStringArray_withAnObject_(self, tableName, anObjClass, attribColumnList, parentAnObject);
  return self;
}

- (instancetype)initWithNSString:(NSString *)tableName
                    withAnObject:(id<AnObject>)anAllDefinedObject {
  AnSqlImpl_initWithNSString_withAnObject_(self, tableName, anAllDefinedObject);
  return self;
}

- (id<JavaUtilSet>)getSkipAttrNameList {
  return skipAttrNameList_;
}

- (void)resetSkipInclAttrNameList {
  [((id<JavaUtilSet>) nil_chk(skipAttrNameList_)) clear];
  [((id<JavaUtilSet>) nil_chk(inclAttrNameList_)) clear];
}

- (void)addInclAttribsWithNSStringArray:(IOSObjectArray *)names {
  id<JavaUtilList> nms = JavaUtilArrays_asListWithNSObjectArray_(names);
  [((id<JavaUtilSet>) nil_chk(inclAttrNameList_)) addAllWithJavaUtilCollection:nms];
  [((id<JavaUtilSet>) nil_chk(skipAttrNameList_)) clear];
}

- (void)addSkipAttribsWithNSStringArray:(IOSObjectArray *)names {
  id<JavaUtilList> nms = JavaUtilArrays_asListWithNSObjectArray_(names);
  [((id<JavaUtilSet>) nil_chk(skipAttrNameList_)) addAllWithJavaUtilCollection:nms];
}

- (NSString *)getTableName {
  return tableName_;
}

- (void)setTableNameWithNSString:(NSString *)tableName {
  self->tableName_ = tableName;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AnSqlImpl_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id<JavaUtilList>)getParameters {
  return parameters_;
}

- (id<JavaUtilList>)getAttribNameList {
  return attribNameList_;
}

- (jint)getType {
  return type_;
}

- (void)setTypeWithInt:(jint)type {
  self->type_ = type;
}

- (void)reset {
  AnSqlImpl_reset(self);
}

- (jboolean)isSkipAttrWithNSString:(NSString *)propertyName {
  if ([((id<JavaUtilSet>) nil_chk(inclAttrNameList_)) size] > 0) {
    if ([inclAttrNameList_ containsWithId:propertyName]) {
      return false;
    }
    else {
      return true;
    }
  }
  else if ([((id<JavaUtilSet>) nil_chk([self getSkipAttrNameList])) size] > 0) {
    if ([((id<JavaUtilSet>) nil_chk([self getSkipAttrNameList])) containsWithId:propertyName]) {
      return true;
    }
    else {
      return false;
    }
  }
  return false;
}

- (void)startSqlDelete {
  AnSqlImpl_reset(self);
  type_ = AnSqlImpl_TYPE_DELETE;
}

- (void)startSqlInsertWithId:(id)objectToInsert {
  AnSqlImpl_reset(self);
  [self setNativeObjectWithId:objectToInsert];
  type_ = AnSqlImpl_TYPE_INSERT;
  insertParamClause_ = new_JavaLangStringBuilder_init();
  id<JavaUtilMap> om = [self getAllAttribMap];
  id<JavaUtilSet> attrNames = [((id<JavaUtilMap>) nil_chk(om)) keySet];
  for (NSString * __strong attrName in nil_chk(attrNames)) {
    if (![self isSkipAttrWithNSString:attrName]) {
      id<AnAttrib> attr = [om getWithId:attrName];
      id value = [self getValueWithAnAttrib_CustomConverter:dbCustomGetConverter_ withAnAttrib:attr];
      if (value != nil) {
        (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:[self getColumnNameWithAnAttrib:attr]];
        [((id<JavaUtilList>) nil_chk(parameters_)) addWithId:value];
        (void) [insertParamClause_ appendWithNSString:@"? "];
      }
      else {
        (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:[self getColumnNameWithAnAttrib:attr]];
        (void) [insertParamClause_ appendWithNSString:@"NULL "];
      }
      [((id<JavaUtilList>) nil_chk(attribNameList_)) addWithId:attrName];
      (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:@","];
      (void) [insertParamClause_ appendWithNSString:@","];
    }
  }
  (void) [queryStr_ replaceWithInt:[((JavaLangStringBuilder *) nil_chk(queryStr_)) length] - 1 withInt:[queryStr_ length] withNSString:@" "];
  (void) [insertParamClause_ replaceWithInt:[insertParamClause_ length] - 1 withInt:[insertParamClause_ length] withNSString:@" "];
  columnClause_ = [queryStr_ description];
}

- (void)startSqlUpdateWithId:(id)objectToUpdate {
  AnSqlImpl_reset(self);
  [self setNativeObjectWithId:objectToUpdate];
  type_ = AnSqlImpl_TYPE_UPDATE;
  id<JavaUtilMap> om = [self getAllAttribMap];
  id<JavaUtilSet> attrNames = [((id<JavaUtilMap>) nil_chk(om)) keySet];
  for (NSString * __strong attrName in nil_chk(attrNames)) {
    if (![self isSkipAttrWithNSString:attrName]) {
      id<AnAttrib> attrib = [om getWithId:attrName];
      if (attrib != nil) {
        (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:JreStrcat("$$", [self getColumnNameWithAnAttrib:attrib], @" = ? ")];
        [((id<JavaUtilList>) nil_chk(parameters_)) addWithId:[self getValueWithAnAttrib_CustomConverter:dbCustomGetConverter_ withAnAttrib:attrib]];
      }
      else {
        (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:JreStrcat("$$", [self getColumnNameWithAnAttrib:attrib], @" = NULL ")];
      }
      [((id<JavaUtilList>) nil_chk(attribNameList_)) addWithId:attrName];
      (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:@","];
    }
  }
  (void) [queryStr_ replaceWithInt:[((JavaLangStringBuilder *) nil_chk(queryStr_)) length] - 1 withInt:[queryStr_ length] withNSString:@" "];
  columnClause_ = [queryStr_ description];
}

- (NSString *)getColumnNameWithAnAttrib:(id<AnAttrib>)attrib {
  return [((id<AnAttrib>) nil_chk(attrib)) getColumnOrAttribName];
}

- (id<AnSql>)startSqlCreate {
  AnSqlImpl_reset(self);
  type_ = AnSqlImpl_TYPE_CREATE;
  id<JavaUtilMap> cm = [self getAllAttribMap];
  id<JavaUtilSet> attribNames = [((id<JavaUtilMap>) nil_chk(cm)) keySet];
  for (NSString * __strong attribName in nil_chk(attribNames)) {
    id<AnAttrib> attr = [cm getWithId:attribName];
    NSString *colName = [self getColumnNameWithAnAttrib:attr];
    (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:colName];
    NSString *columnDef = [self getSqlColumnDefinitionWithAnAttrib:attr];
    (void) [queryStr_ appendWithNSString:JreStrcat("C$", ' ', columnDef)];
    (void) [queryStr_ appendWithNSString:@","];
  }
  (void) [queryStr_ replaceWithInt:[((JavaLangStringBuilder *) nil_chk(queryStr_)) length] - 1 withInt:[queryStr_ length] withNSString:@" "];
  columnClause_ = [queryStr_ description];
  return self;
}

- (NSString *)getSqlColumnDefinitionWithAnAttrib:(id<AnAttrib>)attr {
  NSString *sqlColumnInfo = [((id<AnAttrib>) nil_chk(attr)) getDbColumnDefinition];
  if (sqlColumnInfo != nil) {
    return sqlColumnInfo;
  }
  IOSClass *columnJavaClass = [attr getAttribClass];
  if (columnJavaClass != nil) {
    NSString *className_ = [columnJavaClass getCanonicalName];
    if ([((NSString *) nil_chk([JavaLangLong_class_() getCanonicalName])) isEqual:className_]) {
      return @"INTEGER";
    }
    else if ([((NSString *) nil_chk([JavaLangInteger_class_() getCanonicalName])) isEqual:className_]) {
      return @"INTEGER";
    }
    else if ([((NSString *) nil_chk([JavaLangShort_class_() getCanonicalName])) isEqual:className_]) {
      return @"INTEGER";
    }
    else if ([((NSString *) nil_chk([JavaLangFloat_class_() getCanonicalName])) isEqual:className_]) {
      return @"REAL";
    }
    else if ([((NSString *) nil_chk([JavaLangDouble_class_() getCanonicalName])) isEqual:className_]) {
      return @"REAL";
    }
    else if ([((NSString *) nil_chk([NSString_class_() getCanonicalName])) isEqual:className_]) {
      return @"TEXT";
    }
    else if ([((NSString *) nil_chk([JavaUtilDate_class_() getCanonicalName])) isEqual:className_]) {
      return @"TEXT";
    }
  }
  return @"TEXT";
}

- (NSString *)getAlias {
  return AnSqlImpl_getAlias(self);
}

- (NSString *)getAliasedColumnWithNSString:(NSString *)columnName {
  return JreStrcat("$C$", alias_, '.', columnName);
}

- (void)startSqlSelect {
  AnSqlImpl_reset(self);
  type_ = AnSqlImpl_TYPE_SELECT;
  alias_ = JreStrcat("$C", tableName_, '0');
  id<JavaUtilMap> cm = [self getAllAttribMap];
  id<JavaUtilSet> propertyNames = [((id<JavaUtilMap>) nil_chk(cm)) keySet];
  for (NSString * __strong pName in nil_chk(propertyNames)) {
    if (![self isSkipAttrWithNSString:pName]) {
      NSString *colName = [self getColumnNameWithAnAttrib:[cm getWithId:pName]];
      (void) [((JavaLangStringBuilder *) nil_chk(queryStr_)) appendWithNSString:alias_];
      (void) [queryStr_ appendWithChar:'.'];
      (void) [queryStr_ appendWithNSString:colName];
      [((id<JavaUtilList>) nil_chk(attribNameList_)) addWithId:pName];
      (void) [queryStr_ appendWithChar:','];
    }
  }
  (void) [queryStr_ replaceWithInt:[((JavaLangStringBuilder *) nil_chk(queryStr_)) length] - 1 withInt:[queryStr_ length] withNSString:@" "];
  columnClause_ = [queryStr_ description];
}

- (NSString *)ensureFirstConditionWithNSString:(NSString *)condition {
  return AnSqlImpl_ensureFirstConditionWithNSString_(self, condition);
}

- (void)addWhereWithNSString:(NSString *)condition
                      withId:(id)param {
  if (param != nil) {
    [self addWhereWithNSString:condition];
    [((id<JavaUtilList>) nil_chk(parameters_)) addWithId:param];
  }
}

- (void)addWhereWithNSString:(NSString *)condition {
  condition = AnSqlImpl_ensureFirstConditionWithNSString_(self, condition);
  isWhere_ = true;
  [self addSqlWithNSString:condition];
}

- (void)addLimitOffsetWithJavaLangInteger:(JavaLangInteger *)limit
                      withJavaLangInteger:(JavaLangInteger *)offset {
  if (limit != nil) {
    [self addSqlWithNSString:JreStrcat("$@C", @" LIMIT ", limit, ' ')];
  }
  if (offset != nil) {
    [self addSqlWithNSString:JreStrcat("$@C", @" OFFSET ", offset, ' ')];
  }
}

- (void)addSqlWithNSString:(NSString *)sql {
  if (whereClause_ == nil) {
    whereClause_ = new_JavaLangStringBuilder_init();
  }
  queryStr_ = new_JavaLangStringBuilder_init();
  (void) [queryStr_ appendWithChar:' '];
  (void) [queryStr_ appendWithNSString:sql];
  (void) [queryStr_ appendWithChar:' '];
  (void) [((JavaLangStringBuilder *) nil_chk(whereClause_)) appendWithJavaLangCharSequence:queryStr_];
}

- (NSString *)getQueryString {
  if (type_ == AnSqlImpl_TYPE_CREATE) {
    JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
    (void) [sb appendWithNSString:@"create table "];
    (void) [sb appendWithNSString:tableName_];
    (void) [sb appendWithChar:'('];
    (void) [sb appendWithNSString:columnClause_];
    (void) [sb appendWithChar:')'];
    return [sb description];
  }
  else if (type_ == AnSqlImpl_TYPE_SELECT) {
    JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
    (void) [sb appendWithNSString:@"select "];
    (void) [sb appendWithNSString:columnClause_];
    (void) [sb appendWithNSString:@" from "];
    (void) [sb appendWithNSString:JreStrcat("$C$", tableName_, ' ', alias_)];
    if (isWhere_) {
      (void) [sb appendWithNSString:@" where "];
    }
    if (whereClause_ != nil) {
      (void) [sb appendWithJavaLangCharSequence:whereClause_];
    }
    NSString *qString = [sb description];
    qString = [((NSString *) nil_chk(qString)) replaceAll:@"#" withReplacement:AnSqlImpl_getAlias(self)];
    return qString;
  }
  else if (type_ == AnSqlImpl_TYPE_UPDATE) {
    JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
    (void) [sb appendWithNSString:@"update "];
    (void) [sb appendWithNSString:JreStrcat("$C", tableName_, ' ')];
    (void) [sb appendWithNSString:@"set "];
    (void) [sb appendWithNSString:columnClause_];
    if (whereClause_ != nil) {
      (void) [sb appendWithNSString:@" where "];
      (void) [sb appendWithJavaLangCharSequence:whereClause_];
    }
    return [sb description];
  }
  else if (type_ == AnSqlImpl_TYPE_INSERT) {
    JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
    (void) [sb appendWithNSString:@"INSERT INTO "];
    (void) [sb appendWithNSString:tableName_];
    (void) [sb appendWithChar:'('];
    (void) [sb appendWithNSString:columnClause_];
    (void) [sb appendWithNSString:@") VALUES ("];
    (void) [sb appendWithJavaLangCharSequence:insertParamClause_];
    (void) [sb appendWithChar:')'];
    return [sb description];
  }
  else if (type_ == AnSqlImpl_TYPE_DELETE) {
    JavaLangStringBuilder *sb = new_JavaLangStringBuilder_init();
    (void) [sb appendWithNSString:@"DELETE FROM "];
    (void) [sb appendWithNSString:tableName_];
    if (whereClause_ != nil) {
      (void) [sb appendWithNSString:@" where "];
      (void) [sb appendWithJavaLangCharSequence:whereClause_];
    }
    return [sb description];
  }
  return nil;
}

- (id<AnAttrib_CustomConverter>)getDbCustomSetConverter {
  return dbCustomSetConverter_;
}

- (void)setDbCustomSetConverterWithAnAttrib_CustomConverter:(id<AnAttrib_CustomConverter>)dbCustomSetConverter {
  self->dbCustomSetConverter_ = dbCustomSetConverter;
}

- (id<AnAttrib_CustomConverter>)getDbCustomGetConverter {
  return dbCustomGetConverter_;
}

- (void)setDbCustomGetConverterWithAnAttrib_CustomConverter:(id<AnAttrib_CustomConverter>)dbCustomGetConverter {
  self->dbCustomGetConverter_ = dbCustomGetConverter;
}

@end

void AnSqlImpl_initWithNSString_withIOSClass_withAnAttribArray_withAnObject_(AnSqlImpl *self, NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribList, id<AnObject> parentAnObject) {
  (void) AnObjectImpl_initWithIOSClass_withAnAttribArray_withAnObject_(self, anObjClass, attribList, parentAnObject);
  self->attribNameList_ = new_JavaUtilLinkedList_init();
  self->parameters_ = new_JavaUtilArrayList_init();
  self->isWhere_ = false;
  self->skipAttrNameList_ = new_JavaUtilHashSet_init();
  self->inclAttrNameList_ = new_JavaUtilHashSet_init();
  self->alias_ = @"";
  self->tableName_ = tableName;
}

AnSqlImpl *new_AnSqlImpl_initWithNSString_withIOSClass_withAnAttribArray_withAnObject_(NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribList, id<AnObject> parentAnObject) {
  AnSqlImpl *self = [AnSqlImpl alloc];
  AnSqlImpl_initWithNSString_withIOSClass_withAnAttribArray_withAnObject_(self, tableName, anObjClass, attribList, parentAnObject);
  return self;
}

void AnSqlImpl_initWithNSString_withIOSClass_withNSStringArray_withAnObject_(AnSqlImpl *self, NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribColumnList, id<AnObject> parentAnObject) {
  (void) AnObjectImpl_initWithIOSClass_withNSStringArray_withAnObject_(self, anObjClass, attribColumnList, parentAnObject);
  self->attribNameList_ = new_JavaUtilLinkedList_init();
  self->parameters_ = new_JavaUtilArrayList_init();
  self->isWhere_ = false;
  self->skipAttrNameList_ = new_JavaUtilHashSet_init();
  self->inclAttrNameList_ = new_JavaUtilHashSet_init();
  self->alias_ = @"";
  self->tableName_ = tableName;
}

AnSqlImpl *new_AnSqlImpl_initWithNSString_withIOSClass_withNSStringArray_withAnObject_(NSString *tableName, IOSClass *anObjClass, IOSObjectArray *attribColumnList, id<AnObject> parentAnObject) {
  AnSqlImpl *self = [AnSqlImpl alloc];
  AnSqlImpl_initWithNSString_withIOSClass_withNSStringArray_withAnObject_(self, tableName, anObjClass, attribColumnList, parentAnObject);
  return self;
}

void AnSqlImpl_initWithNSString_withAnObject_(AnSqlImpl *self, NSString *tableName, id<AnObject> anAllDefinedObject) {
  (void) AnObjectImpl_init(self);
  self->attribNameList_ = new_JavaUtilLinkedList_init();
  self->parameters_ = new_JavaUtilArrayList_init();
  self->isWhere_ = false;
  self->skipAttrNameList_ = new_JavaUtilHashSet_init();
  self->inclAttrNameList_ = new_JavaUtilHashSet_init();
  self->alias_ = @"";
  if ([((id<AnObject>) nil_chk(anAllDefinedObject)) getNativeObject] == nil) {
    [anAllDefinedObject resetNativeObject];
  }
  [self init__WithIOSClass:[anAllDefinedObject getNativeClass] withAnAttribArray:[anAllDefinedObject getOwnAttribs] withAnObject:[anAllDefinedObject getParentAnObject]];
  self->tableName_ = tableName;
}

AnSqlImpl *new_AnSqlImpl_initWithNSString_withAnObject_(NSString *tableName, id<AnObject> anAllDefinedObject) {
  AnSqlImpl *self = [AnSqlImpl alloc];
  AnSqlImpl_initWithNSString_withAnObject_(self, tableName, anAllDefinedObject);
  return self;
}

void AnSqlImpl_init(AnSqlImpl *self) {
  (void) AnObjectImpl_init(self);
  self->attribNameList_ = new_JavaUtilLinkedList_init();
  self->parameters_ = new_JavaUtilArrayList_init();
  self->isWhere_ = false;
  self->skipAttrNameList_ = new_JavaUtilHashSet_init();
  self->inclAttrNameList_ = new_JavaUtilHashSet_init();
  self->alias_ = @"";
}

AnSqlImpl *new_AnSqlImpl_init() {
  AnSqlImpl *self = [AnSqlImpl alloc];
  AnSqlImpl_init(self);
  return self;
}

void AnSqlImpl_reset(AnSqlImpl *self) {
  self->queryStr_ = new_JavaLangStringBuilder_init();
  self->isWhere_ = false;
  self->whereClause_ = nil;
  [((id<JavaUtilList>) nil_chk(self->parameters_)) clear];
  [((id<JavaUtilList>) nil_chk(self->attribNameList_)) clear];
}

NSString *AnSqlImpl_getAlias(AnSqlImpl *self) {
  return self->alias_;
}

NSString *AnSqlImpl_ensureFirstConditionWithNSString_(AnSqlImpl *self, NSString *condition) {
  if (self->whereClause_ == nil) {
    if ([((NSString *) nil_chk([((NSString *) nil_chk([((NSString *) nil_chk(condition)) trim])) lowercaseString])) hasPrefix:@"and "]) {
      condition = [((NSString *) nil_chk([condition trim])) substring:4];
    }
    if ([((NSString *) nil_chk([((NSString *) nil_chk([((NSString *) nil_chk(condition)) trim])) lowercaseString])) hasPrefix:@"or "]) {
      condition = [((NSString *) nil_chk([condition trim])) substring:3];
    }
    self->whereClause_ = new_JavaLangStringBuilder_init();
  }
  return condition;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AnSqlImpl)
