//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/DemoBase.java
//

#ifndef _ComProdValsAndr_demo_prjDemoBase_H_
#define _ComProdValsAndr_demo_prjDemoBase_H_

#include "J2ObjC_header.h"

@class Appointment;
@class JavaLangDouble;
@class JavaLangLong;
@protocol AnIncubator;
@protocol AnOrm;
@protocol JavaUtilCollection;
@protocol MobilAction;
@protocol SQLighterDb;
@protocol SQLighterRs;

@interface DemoBase : NSObject

#pragma mark Public

- (instancetype)init;

+ (id<AnOrm>)getOrmAppointentWithSQLighterDb:(id<SQLighterDb>)sqLighterDb;

+ (id<AnOrm>)getOrmEntity;

#pragma mark Protected

+ (void)checkTestWithNSString:(NSString *)name
                  withBoolean:(jboolean)isPassed;

+ (void)extraAmfibianTestsWithAnOrm:(id<AnOrm>)anOrm;

+ (void)finishTestWithBoolean:(jboolean)isPassed;

+ (void)makeTestsFail;

+ (void)printWithAppointment:(Appointment *)appointment;

+ (void)printWithJavaUtilCollection:(id<JavaUtilCollection>)appointments;

+ (void)printWithSQLighterRs:(id<SQLighterRs>)rs;

+ (void)printAppointmentsWithAnOrm:(id<AnOrm>)anOrm;

+ (void)printUserTableWithNSString:(NSString *)title
                   withSQLighterDb:(id<SQLighterDb>)db;

+ (void)resetTestCounters;

+ (void)startTestWithNSString:(NSString *)name;

+ (jboolean)testSummaryCheck;

+ (jboolean)verifyRecordWithSQLighterRs:(id<SQLighterRs>)rs
                           withNSString:(NSString *)userName
                           withNSString:(NSString *)userEmail
                     withJavaLangDouble:(JavaLangDouble *)userHeight
                           withNSString:(NSString *)blobString
                       withJavaLangLong:(JavaLangLong *)id_;

@end

J2OBJC_STATIC_INIT(DemoBase)

FOUNDATION_EXPORT id DemoBase_sqlighterHelloLabel_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, sqlighterHelloLabel_, id)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, sqlighterHelloLabel_, id)

FOUNDATION_EXPORT id DemoBase_sqlighterDetailsLabel_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, sqlighterDetailsLabel_, id)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, sqlighterDetailsLabel_, id)

FOUNDATION_EXPORT id DemoBase_amfibianHelloLabel_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, amfibianHelloLabel_, id)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, amfibianHelloLabel_, id)

FOUNDATION_EXPORT id DemoBase_amfibianDetailsLabel_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, amfibianDetailsLabel_, id)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, amfibianDetailsLabel_, id)

FOUNDATION_EXPORT id<MobilAction> DemoBase_sqlighterStartAction_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, sqlighterStartAction_, id<MobilAction>)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, sqlighterStartAction_, id<MobilAction>)

FOUNDATION_EXPORT id<MobilAction> DemoBase_amfibianStartAction_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, amfibianStartAction_, id<MobilAction>)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, amfibianStartAction_, id<MobilAction>)

FOUNDATION_EXPORT NSString *DemoBase_jsonStringWithObjectDefinitions_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, jsonStringWithObjectDefinitions_, NSString *)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, jsonStringWithObjectDefinitions_, NSString *)

FOUNDATION_EXPORT jboolean DemoBase_isUseJsonFile_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, isUseJsonFile_, jboolean)
J2OBJC_STATIC_FIELD_REF_GETTER(DemoBase, isUseJsonFile_, jboolean)
FOUNDATION_EXPORT id<AnIncubator> DemoBase_anIncubator_;
J2OBJC_STATIC_FIELD_GETTER(DemoBase, anIncubator_, id<AnIncubator>)
J2OBJC_STATIC_FIELD_SETTER(DemoBase, anIncubator_, id<AnIncubator>)

FOUNDATION_EXPORT void DemoBase_resetTestCounters();

FOUNDATION_EXPORT void DemoBase_checkTestWithNSString_withBoolean_(NSString *name, jboolean isPassed);

FOUNDATION_EXPORT void DemoBase_startTestWithNSString_(NSString *name);

FOUNDATION_EXPORT void DemoBase_finishTestWithBoolean_(jboolean isPassed);

FOUNDATION_EXPORT void DemoBase_makeTestsFail();

FOUNDATION_EXPORT jboolean DemoBase_testSummaryCheck();

FOUNDATION_EXPORT void DemoBase_printAppointmentsWithAnOrm_(id<AnOrm> anOrm);

FOUNDATION_EXPORT void DemoBase_printWithJavaUtilCollection_(id<JavaUtilCollection> appointments);

FOUNDATION_EXPORT void DemoBase_printWithAppointment_(Appointment *appointment);

FOUNDATION_EXPORT void DemoBase_printWithSQLighterRs_(id<SQLighterRs> rs);

FOUNDATION_EXPORT void DemoBase_printUserTableWithNSString_withSQLighterDb_(NSString *title, id<SQLighterDb> db);

FOUNDATION_EXPORT jboolean DemoBase_verifyRecordWithSQLighterRs_withNSString_withNSString_withJavaLangDouble_withNSString_withJavaLangLong_(id<SQLighterRs> rs, NSString *userName, NSString *userEmail, JavaLangDouble *userHeight, NSString *blobString, JavaLangLong *id_);

FOUNDATION_EXPORT void DemoBase_extraAmfibianTestsWithAnOrm_(id<AnOrm> anOrm);

FOUNDATION_EXPORT id<AnOrm> DemoBase_getOrmEntity();

FOUNDATION_EXPORT id<AnOrm> DemoBase_getOrmAppointentWithSQLighterDb_(id<SQLighterDb> sqLighterDb);

FOUNDATION_EXPORT void DemoBase_init(DemoBase *self);

J2OBJC_TYPE_LITERAL_HEADER(DemoBase)

@compatibility_alias ComProdValsAndr_demo_prjDemoBase DemoBase;

#endif // _ComProdValsAndr_demo_prjDemoBase_H_
