//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ..//android/com/vals/a2ios/mobilighter/impl/MUtil.java
//

#ifndef _ComValsA2iosMobilighterImplMUtil_H_
#define _ComValsA2iosMobilighterImplMUtil_H_

#include "J2ObjC_header.h"

@class IOSObjectArray;
@class JavaLangDouble;
@class JavaLangInteger;
@class JavaLangLong;
@class JavaUtilDate;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface MUtil : NSObject

#pragma mark Public

- (instancetype)init;

+ (NSString *)actualUrlWithNSString:(NSString *)baseUrl
                       withNSString:(NSString *)paramString;

+ (void)addNotNullValueWithJavaUtilMap:(id<JavaUtilMap>)map
                          withNSString:(NSString *)name
                                withId:(id)value;

+ (NSString *)concatenateWithJavaUtilCollection:(id<JavaUtilCollection>)c;

+ (NSString *)concatenateWithNSStringArray:(IOSObjectArray *)c;

+ (jboolean)containsAnyCharWithNSString:(NSString *)strToCheck
                           withNSString:(NSString *)charSeq;

+ (id<JavaUtilCollection>)emptyIfNullWithJavaUtilCollection:(id<JavaUtilCollection>)c;

+ (id<JavaUtilCollection>)emptyIfNullWithNSObjectArray:(IOSObjectArray *)a;

+ (id)getFirstElementOrNullWithJavaUtilCollection:(id<JavaUtilCollection>)coll;

+ (NSString *)getParametersStrWithJavaUtilMap:(id<JavaUtilMap>)paramMap;

+ (jboolean)isEmptyWithJavaUtilCollection:(id<JavaUtilCollection>)c;

+ (jboolean)isEmptyWithNSString:(NSString *)s1;

+ (jboolean)isEqualToWithNSNumber:(NSNumber *)o1
                     withNSNumber:(NSNumber *)value;

+ (jboolean)isEqualToWithNSNumber:(NSNumber *)o1
                     withNSNumber:(NSNumber *)value
               withJavaLangDouble:(JavaLangDouble *)allowance;

+ (jboolean)isEqualToWithNSString:(NSString *)s1
                     withNSString:(NSString *)s2;

+ (jboolean)isGWithNSNumber:(NSNumber *)n1
               withNSNumber:(NSNumber *)n2;

+ (jboolean)isNewerWithJavaUtilDate:(JavaUtilDate *)d1
                   withJavaUtilDate:(JavaUtilDate *)d2;

+ (NSString *)mapToUrlWithJavaUtilMap:(id<JavaUtilMap>)map;

+ (JavaLangDouble *)toDoubleWithId:(id)value;

+ (JavaLangInteger *)toIntWithId:(id)value;

+ (JavaLangLong *)toLongWithId:(id)value;

+ (NSNumber *)toNotNullWithNSNumber:(NSNumber *)value;

+ (NSString *)toNotNullWithNSString:(NSString *)value;

+ (NSString *)toStringWithId:(id)o;

@end

J2OBJC_EMPTY_STATIC_INIT(MUtil)

FOUNDATION_EXPORT NSString *MUtil_actualUrlWithNSString_withNSString_(NSString *baseUrl, NSString *paramString);

FOUNDATION_EXPORT jboolean MUtil_isNewerWithJavaUtilDate_withJavaUtilDate_(JavaUtilDate *d1, JavaUtilDate *d2);

FOUNDATION_EXPORT NSString *MUtil_concatenateWithNSStringArray_(IOSObjectArray *c);

FOUNDATION_EXPORT NSString *MUtil_concatenateWithJavaUtilCollection_(id<JavaUtilCollection> c);

FOUNDATION_EXPORT NSString *MUtil_mapToUrlWithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT void MUtil_addNotNullValueWithJavaUtilMap_withNSString_withId_(id<JavaUtilMap> map, NSString *name, id value);

FOUNDATION_EXPORT NSString *MUtil_getParametersStrWithJavaUtilMap_(id<JavaUtilMap> paramMap);

FOUNDATION_EXPORT id MUtil_getFirstElementOrNullWithJavaUtilCollection_(id<JavaUtilCollection> coll);

FOUNDATION_EXPORT id<JavaUtilCollection> MUtil_emptyIfNullWithNSObjectArray_(IOSObjectArray *a);

FOUNDATION_EXPORT id<JavaUtilCollection> MUtil_emptyIfNullWithJavaUtilCollection_(id<JavaUtilCollection> c);

FOUNDATION_EXPORT jboolean MUtil_isEmptyWithJavaUtilCollection_(id<JavaUtilCollection> c);

FOUNDATION_EXPORT jboolean MUtil_isEqualToWithNSString_withNSString_(NSString *s1, NSString *s2);

FOUNDATION_EXPORT jboolean MUtil_isGWithNSNumber_withNSNumber_(NSNumber *n1, NSNumber *n2);

FOUNDATION_EXPORT jboolean MUtil_isEqualToWithNSNumber_withNSNumber_(NSNumber *o1, NSNumber *value);

FOUNDATION_EXPORT jboolean MUtil_isEqualToWithNSNumber_withNSNumber_withJavaLangDouble_(NSNumber *o1, NSNumber *value, JavaLangDouble *allowance);

FOUNDATION_EXPORT jboolean MUtil_isEmptyWithNSString_(NSString *s1);

FOUNDATION_EXPORT jboolean MUtil_containsAnyCharWithNSString_withNSString_(NSString *strToCheck, NSString *charSeq);

FOUNDATION_EXPORT JavaLangDouble *MUtil_toDoubleWithId_(id value);

FOUNDATION_EXPORT JavaLangInteger *MUtil_toIntWithId_(id value);

FOUNDATION_EXPORT JavaLangLong *MUtil_toLongWithId_(id value);

FOUNDATION_EXPORT NSString *MUtil_toStringWithId_(id o);

FOUNDATION_EXPORT NSNumber *MUtil_toNotNullWithNSNumber_(NSNumber *value);

FOUNDATION_EXPORT NSString *MUtil_toNotNullWithNSString_(NSString *value);

FOUNDATION_EXPORT void MUtil_init(MUtil *self);

FOUNDATION_EXPORT MUtil *new_MUtil_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MUtil)

@compatibility_alias ComValsA2iosMobilighterImplMUtil MUtil;

#endif // _ComValsA2iosMobilighterImplMUtil_H_
