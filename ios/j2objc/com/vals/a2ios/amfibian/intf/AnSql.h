//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/intf/AnSql.java
//

#ifndef _ComValsA2iosAmfibianIntfAnSql_H_
#define _ComValsA2iosAmfibianIntfAnSql_H_

#include "J2ObjC_header.h"
#include "com/vals/a2ios/amfibian/intf/AnObject.h"

@class IOSObjectArray;
@class JavaLangInteger;
@protocol AnAttrib_CustomConverter;
@protocol JavaUtilList;
@protocol JavaUtilSet;

@protocol AnSql < AnObject, NSObject, JavaObject >

- (void)startSqlSelect;

- (void)startSqlDelete;

- (void)startSqlInsertWithId:(id)objectToInsert;

- (void)startSqlUpdateWithId:(id)objectToUpdate;

- (void)addWhereWithNSString:(NSString *)condition
                      withId:(id)param;

- (void)addWhereWithNSString:(NSString *)condition;

- (void)addSqlWithNSString:(NSString *)sql;

- (NSString *)getQueryString;

- (id<JavaUtilSet>)getSkipAttrNameList;

- (void)resetSkipInclAttrNameList;

- (void)addInclAttribsWithNSStringArray:(IOSObjectArray *)names;

- (void)addSkipAttribsWithNSStringArray:(IOSObjectArray *)names;

- (NSString *)getTableName;

- (void)setTableNameWithNSString:(NSString *)tableName;

- (id<JavaUtilList>)getParameters;

- (id<AnSql>)startSqlCreate;

- (id<AnAttrib_CustomConverter>)getDbCustomSetConverter;

- (void)setDbCustomSetConverterWithAnAttrib_CustomConverter:(id<AnAttrib_CustomConverter>)sqlCustomSetConverter;

- (id<AnAttrib_CustomConverter>)getDbCustomGetConverter;

- (void)setDbCustomGetConverterWithAnAttrib_CustomConverter:(id<AnAttrib_CustomConverter>)sqlCustomGetConverter;

- (void)addLimitOffsetWithJavaLangInteger:(JavaLangInteger *)limit
                      withJavaLangInteger:(JavaLangInteger *)offset;

@end

J2OBJC_EMPTY_STATIC_INIT(AnSql)

J2OBJC_TYPE_LITERAL_HEADER(AnSql)

#define ComValsA2iosAmfibianIntfAnSql AnSql

#endif // _ComValsA2iosAmfibianIntfAnSql_H_
