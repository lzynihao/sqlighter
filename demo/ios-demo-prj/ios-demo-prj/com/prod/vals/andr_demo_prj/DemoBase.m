//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../demo/andr-demo-prj/app/src/main/java/com/prod/vals/andr_demo_prj/DemoBase.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/prod/vals/andr_demo_prj/Appointment.h"
#include "com/prod/vals/andr_demo_prj/Bootstrap.h"
#include "com/prod/vals/andr_demo_prj/DemoBase.h"
#include "com/vals/a2ios/amfibian/impl/AnIncubatorImpl.h"
#include "com/vals/a2ios/amfibian/intf/AnIncubator.h"
#include "com/vals/a2ios/amfibian/intf/AnOrm.h"
#include "com/vals/a2ios/mobilighter/intf/MobilAction.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterDb.h"
#include "com/vals/a2ios/sqlighter/intf/SQLighterRs.h"
#include "java/io/PrintStream.h"
#include "java/lang/Double.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/util/Collection.h"
#include "java/util/Date.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"

@interface DemoBase () {
 @public
  id<SQLighterDb> sqLighterDb_;
  jint passedTestCount_;
  id<JavaUtilList> testList_;
}

@end

J2OBJC_FIELD_SETTER(DemoBase, sqLighterDb_, id<SQLighterDb>)
J2OBJC_FIELD_SETTER(DemoBase, testList_, id<JavaUtilList>)

@implementation DemoBase

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DemoBase_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)resetTestCounters {
  [((id<JavaUtilList>) nil_chk(testList_)) clear];
  passedTestCount_ = 0;
}

- (void)checkTestWithNSString:(NSString *)name
                  withBoolean:(jboolean)isPassed {
  [((id<JavaUtilList>) nil_chk(testList_)) addWithId:name];
  if (isPassed) {
    passedTestCount_++;
  }
}

- (void)startTestWithNSString:(NSString *)name {
  [((id<JavaUtilList>) nil_chk(testList_)) addWithId:name];
}

- (void)finishTestWithBoolean:(jboolean)isPassed {
  if (isPassed) {
    passedTestCount_++;
  }
}

- (void)makeTestsFail {
  passedTestCount_ = 0;
}

- (jboolean)testSummaryCheck {
  return [((id<JavaUtilList>) nil_chk(testList_)) size] == passedTestCount_;
}

- (void)printAppointmentsWithAnOrm:(id<AnOrm>)anOrm {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"Appointment records"];
  [((id<AnOrm>) nil_chk(anOrm)) startSqlSelect];
  [self printWithJavaUtilCollection:[anOrm getRecords]];
}

- (void)printWithJavaUtilCollection:(id<JavaUtilCollection>)appointments {
  for (Appointment * __strong a in nil_chk(appointments)) {
    [self printWithAppointment:a];
  }
}

- (void)printWithAppointment:(Appointment *)appointment {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@$$$@$@$@", @"Appointment object. id: ", [((Appointment *) nil_chk(appointment)) getId], @", name: ", [appointment getName], @", isProcessed:", [appointment getIsProcessed], @", createDate:", [appointment getCreateDate], @", status: ", [appointment getStatus])];
}

- (void)printWithSQLighterRs:(id<SQLighterRs>)rs {
  JavaLangLong *pk = [((id<SQLighterRs>) nil_chk(rs)) getLongWithInt:0];
  NSString *e = [rs getStringWithInt:1];
  NSString *n = [rs getStringWithInt:2];
  IOSByteArray *dataBytes = [rs getBlobWithInt:3];
  NSString *dataString = nil;
  if (dataBytes != nil) {
    dataString = [NSString java_stringWithBytes:dataBytes];
  }
  NSNumber *h = [rs getDoubleWithInt:4];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@$$$$$$$@", @"pk: ", pk, @", email: ", e, @", name: ", n, @", blob data: ", dataString, @", height: ", h)];
}

- (void)printUserTableWithNSString:(NSString *)title
                   withSQLighterDb:(id<SQLighterDb>)db {
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:title];
  id<SQLighterRs> rs = [((id<SQLighterDb>) nil_chk(db)) executeSelectWithNSString:@"select id, email, name, data, height from user"];
  while ([((id<SQLighterRs>) nil_chk(rs)) hasNext]) {
    [self printWithSQLighterRs:rs];
  }
  [rs close];
}

- (jboolean)verifyRecordWithSQLighterRs:(id<SQLighterRs>)rs
                           withNSString:(NSString *)userName
                           withNSString:(NSString *)userEmail
                     withJavaLangDouble:(JavaLangDouble *)userHeight
                           withNSString:(NSString *)blobString
                       withJavaLangLong:(JavaLangLong *)id_ {
  JavaLangLong *pk = [((id<SQLighterRs>) nil_chk(rs)) getLongWithInt:0];
  NSString *e = [rs getStringWithInt:1];
  NSString *n = [rs getStringWithInt:2];
  IOSByteArray *dataBytes = [rs getBlobWithInt:3];
  NSString *dataString = nil;
  if (dataBytes != nil) {
    dataString = [NSString java_stringWithBytes:dataBytes];
  }
  NSNumber *h = [rs getDoubleWithInt:4];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$@$$$$$$$@", @"pk: ", pk, @", email: ", e, @", name: ", n, @", blob data: ", dataString, @", height: ", h)];
  return ([((JavaLangLong *) nil_chk(pk)) isEqual:id_] && [((NSString *) nil_chk(e)) isEqual:userEmail] && [((NSString *) nil_chk(n)) isEqual:userName] && [((NSString *) nil_chk(dataString)) isEqual:blobString] && [((NSNumber *) nil_chk(h)) doubleValue] == [((JavaLangDouble *) nil_chk(userHeight)) doubleValue]);
}

- (id<AnOrm>)getOrmWithIOSClass:(IOSClass *)cluss {
  id<AnOrm> anOrm = [((id<AnIncubator>) nil_chk(anIncubator_)) makeWithIOSClass:cluss];
  [((id<AnOrm>) nil_chk(anOrm)) setSqlighterDbWithSQLighterDb:[((Bootstrap *) nil_chk(Bootstrap_getInstance())) getSqLighterDb]];
  return anOrm;
}

@end

void DemoBase_init(DemoBase *self) {
  NSObject_init(self);
  self->sqLighterDb_ = [((Bootstrap *) nil_chk(Bootstrap_getInstance())) getSqLighterDb];
  self->passedTestCount_ = 0;
  self->testList_ = new_JavaUtilLinkedList_init();
  self->anIncubator_ = new_AnIncubatorImpl_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DemoBase)
