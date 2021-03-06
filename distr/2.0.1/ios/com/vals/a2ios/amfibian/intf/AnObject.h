//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/intf/AnObject.java
//

#ifndef _ComValsA2iosAmfibianIntfAnObject_H_
#define _ComValsA2iosAmfibianIntfAnObject_H_

#include "J2ObjC_header.h"

@class IOSClass;
@class IOSObjectArray;
@class OrgJsonJSONObject;
@protocol AnAttrib;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@protocol AnObject < NSObject, JavaObject >

- (void)resetNativeObject;

- (IOSClass *)getNativeClass;

- (id<JavaUtilMap>)getAllAttribMap;

- (id<AnAttrib>)getAttribWithNSString:(NSString *)attribName;

- (void)addAttribWithAnAttrib:(id<AnAttrib>)anAttrib;

- (id<JavaUtilMap>)asMapWithId:(id)nativeObject;

- (OrgJsonJSONObject *)asJSONObjectWithId:(id)nativeObject;

- (id)asNativeObjectWithOrgJsonJSONObject:(OrgJsonJSONObject *)jsonObject;

- (id)asNativeObjectWithNSString:(NSString *)jsonString;

- (id<JavaUtilCollection>)asListWithNSString:(NSString *)jsonArrayString;

- (NSString *)asJsonStringWithId:(id)nativeObject;

- (id)getNativeObject;

- (id<JavaUtilMap>)getJsonMap;

- (void)setNativeClassWithIOSClass:(IOSClass *)anObjClass;

- (void)setNativeObjectWithId:(id)o;

- (IOSObjectArray *)getAllAttribs;

- (id<AnObject>)getParentAnObject;

- (IOSObjectArray *)getOwnAttribs;

@end

J2OBJC_EMPTY_STATIC_INIT(AnObject)

J2OBJC_TYPE_LITERAL_HEADER(AnObject)

#define ComValsA2iosAmfibianIntfAnObject AnObject

#endif // _ComValsA2iosAmfibianIntfAnObject_H_
