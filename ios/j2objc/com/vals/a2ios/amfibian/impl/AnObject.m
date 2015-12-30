//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ../../../../android//com/vals/a2ios/amfibian/impl/AnObject.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/vals/a2ios/amfibian/impl/AnAttrib.h"
#include "com/vals/a2ios/amfibian/impl/AnObject.h"
#include "java/lang/Exception.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/LinkedHashMap.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/json/JSONArray.h"
#include "org/json/JSONObject.h"

@interface ComValsA2iosAmfibianImplAnObject () {
 @public
  ComValsA2iosAmfibianImplAnObject *parentAnObject_;
  id<JavaUtilMap> nativeObjectMap_;
  id<JavaUtilMap> jsonMap_;
  id nativeObject_;
  id<JavaUtilMap> attribMap_;
}

- (IOSObjectArray *)stringsToAttribsWithNSStringArray:(IOSObjectArray *)propertyNames;

- (void)initAttribsWithComValsA2iosAmfibianImplAnAttribArray:(IOSObjectArray *)attribMappers OBJC_METHOD_FAMILY_NONE;

- (void)setValueWithId:(id)someValue;

@end

J2OBJC_FIELD_SETTER(ComValsA2iosAmfibianImplAnObject, parentAnObject_, ComValsA2iosAmfibianImplAnObject *)
J2OBJC_FIELD_SETTER(ComValsA2iosAmfibianImplAnObject, nativeObjectMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComValsA2iosAmfibianImplAnObject, jsonMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComValsA2iosAmfibianImplAnObject, nativeObject_, id)
J2OBJC_FIELD_SETTER(ComValsA2iosAmfibianImplAnObject, attribMap_, id<JavaUtilMap>)

__attribute__((unused)) static IOSObjectArray *ComValsA2iosAmfibianImplAnObject_stringsToAttribsWithNSStringArray_(ComValsA2iosAmfibianImplAnObject *self, IOSObjectArray *propertyNames);

__attribute__((unused)) static void ComValsA2iosAmfibianImplAnObject_initAttribsWithComValsA2iosAmfibianImplAnAttribArray_(ComValsA2iosAmfibianImplAnObject *self, IOSObjectArray *attribMappers);

@implementation ComValsA2iosAmfibianImplAnObject

- (void)resetNativeObject {
  [self setNativeObjectWithId:[((IOSClass *) nil_chk(nativeClass_)) newInstance]];
}

- (void)setNativeObjectWithId:(id)o {
  self->nativeObject_ = o;
  if (parentAnObject_ != nil) {
    [parentAnObject_ setNativeObjectWithId:o];
  }
}

- (id)getNativeObject {
  return nativeObject_;
}

- (IOSClass *)getNativeClass {
  return nativeClass_;
}

- (id<JavaUtilMap>)getAttribList {
  id<JavaUtilMap> p = new_JavaUtilHashMap_init();
  if (parentAnObject_ != nil) {
    [p putAllWithJavaUtilMap:[parentAnObject_ getAttribList]];
  }
  if (attribMap_ != nil) {
    [p putAllWithJavaUtilMap:attribMap_];
  }
  return p;
}

- (ComValsA2iosAmfibianImplAnAttrib *)getAttribWithNSString:(NSString *)propertyName {
  ComValsA2iosAmfibianImplAnAttrib *a = [((id<JavaUtilMap>) nil_chk(attribMap_)) getWithId:propertyName];
  if (a == nil && parentAnObject_ != nil) {
    a = [parentAnObject_ getAttribWithNSString:propertyName];
  }
  return a;
}

- (void)setNativeClassWithIOSClass:(IOSClass *)anObjClass {
  self->nativeClass_ = anObjClass;
  IOSClass *superClass = [((IOSClass *) nil_chk(anObjClass)) getSuperclass];
  if (superClass != nil) {
    if (parentAnObject_ != nil) {
      [parentAnObject_ setNativeClassWithIOSClass:superClass];
    }
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComValsA2iosAmfibianImplAnObject_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithIOSClass:(IOSClass *)anObjClass
withComValsA2iosAmfibianImplAnObject:(ComValsA2iosAmfibianImplAnObject *)parentMapper {
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnObject_(self, anObjClass, parentMapper);
  return self;
}

- (void)init__WithIOSClass:(IOSClass *)anObjClass
withComValsA2iosAmfibianImplAnObject:(ComValsA2iosAmfibianImplAnObject *)parentMapper {
  self->parentAnObject_ = parentMapper;
  [self setNativeClassWithIOSClass:anObjClass];
}

- (instancetype)initWithIOSClass:(IOSClass *)anObjClass
withComValsA2iosAmfibianImplAnAttribArray:(IOSObjectArray *)propertyMappers
withComValsA2iosAmfibianImplAnObject:(ComValsA2iosAmfibianImplAnObject *)parentMapper {
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_withComValsA2iosAmfibianImplAnObject_(self, anObjClass, propertyMappers, parentMapper);
  return self;
}

- (void)init__WithIOSClass:(IOSClass *)anObjClass
withComValsA2iosAmfibianImplAnAttribArray:(IOSObjectArray *)propertyMappers
withComValsA2iosAmfibianImplAnObject:(ComValsA2iosAmfibianImplAnObject *)parentMapper {
  [self init__WithIOSClass:anObjClass withComValsA2iosAmfibianImplAnObject:parentMapper];
  ComValsA2iosAmfibianImplAnObject_initAttribsWithComValsA2iosAmfibianImplAnAttribArray_(self, propertyMappers);
}

- (instancetype)initWithIOSClass:(IOSClass *)anObjClass
withComValsA2iosAmfibianImplAnAttribArray:(IOSObjectArray *)propertyMappers {
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_(self, anObjClass, propertyMappers);
  return self;
}

- (void)init__WithIOSClass:(IOSClass *)anObjClass
withComValsA2iosAmfibianImplAnAttribArray:(IOSObjectArray *)propertyMappers {
  ComValsA2iosAmfibianImplAnObject_initAttribsWithComValsA2iosAmfibianImplAnAttribArray_(self, propertyMappers);
  [self setNativeClassWithIOSClass:anObjClass];
}

- (instancetype)initWithIOSClass:(IOSClass *)anObjClass
               withNSStringArray:(IOSObjectArray *)propertyNames
withComValsA2iosAmfibianImplAnObject:(ComValsA2iosAmfibianImplAnObject *)parentMapper {
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_withComValsA2iosAmfibianImplAnObject_(self, anObjClass, propertyNames, parentMapper);
  return self;
}

- (void)init__WithIOSClass:(IOSClass *)anObjClass
         withNSStringArray:(IOSObjectArray *)propertyNames
withComValsA2iosAmfibianImplAnObject:(ComValsA2iosAmfibianImplAnObject *)parentMapper {
  self->parentAnObject_ = parentMapper;
  [self init__WithIOSClass:anObjClass withNSStringArray:propertyNames];
}

- (instancetype)initWithIOSClass:(IOSClass *)anObjClass
               withNSStringArray:(IOSObjectArray *)propertyNames {
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_(self, anObjClass, propertyNames);
  return self;
}

- (void)init__WithIOSClass:(IOSClass *)anObjClass
         withNSStringArray:(IOSObjectArray *)propertyNames {
  IOSObjectArray *list = ComValsA2iosAmfibianImplAnObject_stringsToAttribsWithNSStringArray_(self, propertyNames);
  [self init__WithIOSClass:anObjClass withComValsA2iosAmfibianImplAnAttribArray:list];
}

- (IOSObjectArray *)stringsToAttribsWithNSStringArray:(IOSObjectArray *)propertyNames {
  return ComValsA2iosAmfibianImplAnObject_stringsToAttribsWithNSStringArray_(self, propertyNames);
}

- (void)initAttribsWithComValsA2iosAmfibianImplAnAttribArray:(IOSObjectArray *)attribMappers {
  ComValsA2iosAmfibianImplAnObject_initAttribsWithComValsA2iosAmfibianImplAnAttribArray_(self, attribMappers);
}

- (void)addAttribWithComValsA2iosAmfibianImplAnAttrib:(ComValsA2iosAmfibianImplAnAttrib *)anAttribMapper {
  [((ComValsA2iosAmfibianImplAnAttrib *) nil_chk(anAttribMapper)) setAnObjectWithComValsA2iosAmfibianImplAnObject:self];
  (void) [((id<JavaUtilMap>) nil_chk(attribMap_)) putWithId:[anAttribMapper getAttribName] withId:anAttribMapper];
}

- (id<JavaUtilMap>)getJsonMap {
  if (jsonMap_ == nil) {
    jsonMap_ = new_JavaUtilHashMap_init();
    id<JavaUtilSet> p = [((id<JavaUtilMap>) nil_chk(attribMap_)) keySet];
    for (NSString * __strong attrName in nil_chk(p)) {
      ComValsA2iosAmfibianImplAnAttrib *attr = [attribMap_ getWithId:attrName];
      id value = [((ComValsA2iosAmfibianImplAnAttrib *) nil_chk(attr)) getValue];
      if (value != nil) {
        (void) [jsonMap_ putWithId:[attr getJsonOrAttribName] withId:[attr getValue]];
      }
    }
  }
  if (parentAnObject_ != nil) {
    id<JavaUtilMap> parentJsonMap = [parentAnObject_ getJsonMap];
    id<JavaUtilSet> keys = [((id<JavaUtilMap>) nil_chk(parentJsonMap)) keySet];
    for (NSString * __strong k in nil_chk(keys)) {
      (void) [((id<JavaUtilMap>) nil_chk(jsonMap_)) putWithId:k withId:[parentJsonMap getWithId:k]];
    }
  }
  return jsonMap_;
}

- (id<JavaUtilMap>)asMapWithId:(id)nativeObject {
  @synchronized(self) {
    [self setNativeObjectWithId:nativeObject];
    if (nativeObjectMap_ == nil) {
      nativeObjectMap_ = new_JavaUtilHashMap_init();
      id<JavaUtilSet> p = [((id<JavaUtilMap>) nil_chk(attribMap_)) keySet];
      for (NSString * __strong pName in nil_chk(p)) {
        ComValsA2iosAmfibianImplAnAttrib *pm = [attribMap_ getWithId:pName];
        id value = [((ComValsA2iosAmfibianImplAnAttrib *) nil_chk(pm)) getValue];
        if (value != nil) {
          (void) [nativeObjectMap_ putWithId:pName withId:[pm getValue]];
        }
      }
    }
    if (parentAnObject_ != nil) {
      id<JavaUtilMap> parentMap = [parentAnObject_ asMapWithId:nativeObject];
      id<JavaUtilSet> keys = [((id<JavaUtilMap>) nil_chk(parentMap)) keySet];
      for (NSString * __strong k in nil_chk(keys)) {
        (void) [((id<JavaUtilMap>) nil_chk(nativeObjectMap_)) putWithId:k withId:[parentMap getWithId:k]];
      }
    }
    return nativeObjectMap_;
  }
}

- (OrgJsonJSONObject *)asJSONObjectWithId:(id)nativeObject {
  @synchronized(self) {
    [self setNativeObjectWithId:nativeObject];
    (void) [self asMapWithId:nativeObject];
    return new_OrgJsonJSONObject_initWithJavaUtilMap_([self getJsonMap]);
  }
}

- (id)asNativeObjectWithOrgJsonJSONObject:(OrgJsonJSONObject *)jsonObject {
  @synchronized(self) {
    if (nativeObject_ == nil) {
      [self resetNativeObject];
    }
    if (parentAnObject_ != nil) {
      (void) [parentAnObject_ asNativeObjectWithOrgJsonJSONObject:jsonObject];
    }
    id<JavaUtilSet> attrObjsKeys = [((id<JavaUtilMap>) nil_chk(attribMap_)) keySet];
    for (NSString * __strong attribName in nil_chk(attrObjsKeys)) {
      ComValsA2iosAmfibianImplAnAttrib *attr = [attribMap_ getWithId:attribName];
      if (![((OrgJsonJSONObject *) nil_chk(jsonObject)) isNullWithNSString:[((ComValsA2iosAmfibianImplAnAttrib *) nil_chk(attr)) getJsonOrAttribName]]) {
        id attrValue = [jsonObject getWithNSString:[attr getJsonOrAttribName]];
        if (attrValue != nil) {
          [attr setValueWithId:attrValue];
        }
      }
    }
    return nativeObject_;
  }
}

- (id)asNativeObjectWithNSString:(NSString *)jsonString {
  @synchronized(self) {
    return [self asNativeObjectWithOrgJsonJSONObject:new_OrgJsonJSONObject_initWithNSString_(jsonString)];
  }
}

- (id<JavaUtilCollection>)asListWithNSString:(NSString *)jsonArrayString {
  @synchronized(self) {
    OrgJsonJSONArray *jsonArray = new_OrgJsonJSONArray_initWithNSString_(jsonArrayString);
    id<JavaUtilList> l = new_JavaUtilLinkedList_init();
    for (jint i = 0; i < [jsonArray length]; i++) {
      id o = [jsonArray getWithInt:i];
      [self resetNativeObject];
      id t = [self asNativeObjectWithOrgJsonJSONObject:(OrgJsonJSONObject *) check_class_cast(o, [OrgJsonJSONObject class])];
      [l addWithId:t];
    }
    [self resetNativeObject];
    return l;
  }
}

- (NSString *)asJsonStringWithId:(id)nativeObject {
  @synchronized(self) {
    return [((OrgJsonJSONObject *) nil_chk([self asJSONObjectWithId:nativeObject])) description];
  }
}

- (void)setValueWithId:(id)someValue {
  if (someValue != nil) {
    if ([someValue isKindOfClass:[NSString class]]) {
      (void) [self asNativeObjectWithNSString:(NSString *) check_class_cast(someValue, [NSString class])];
    }
    else if ([someValue isKindOfClass:[OrgJsonJSONObject class]]) {
      (void) [self asNativeObjectWithOrgJsonJSONObject:(OrgJsonJSONObject *) check_class_cast(someValue, [OrgJsonJSONObject class])];
    }
    else {
      id t = (id) someValue;
      [self setNativeObjectWithId:t];
    }
  }
}

@end

void ComValsA2iosAmfibianImplAnObject_init(ComValsA2iosAmfibianImplAnObject *self) {
  (void) NSObject_init(self);
  self->attribMap_ = new_JavaUtilLinkedHashMap_init();
}

ComValsA2iosAmfibianImplAnObject *new_ComValsA2iosAmfibianImplAnObject_init() {
  ComValsA2iosAmfibianImplAnObject *self = [ComValsA2iosAmfibianImplAnObject alloc];
  ComValsA2iosAmfibianImplAnObject_init(self);
  return self;
}

void ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnObject_(ComValsA2iosAmfibianImplAnObject *self, IOSClass *anObjClass, ComValsA2iosAmfibianImplAnObject *parentMapper) {
  (void) NSObject_init(self);
  self->attribMap_ = new_JavaUtilLinkedHashMap_init();
  [self init__WithIOSClass:anObjClass withComValsA2iosAmfibianImplAnObject:parentMapper];
}

ComValsA2iosAmfibianImplAnObject *new_ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnObject_(IOSClass *anObjClass, ComValsA2iosAmfibianImplAnObject *parentMapper) {
  ComValsA2iosAmfibianImplAnObject *self = [ComValsA2iosAmfibianImplAnObject alloc];
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnObject_(self, anObjClass, parentMapper);
  return self;
}

void ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_withComValsA2iosAmfibianImplAnObject_(ComValsA2iosAmfibianImplAnObject *self, IOSClass *anObjClass, IOSObjectArray *propertyMappers, ComValsA2iosAmfibianImplAnObject *parentMapper) {
  (void) NSObject_init(self);
  self->attribMap_ = new_JavaUtilLinkedHashMap_init();
  [self init__WithIOSClass:anObjClass withComValsA2iosAmfibianImplAnAttribArray:propertyMappers withComValsA2iosAmfibianImplAnObject:parentMapper];
}

ComValsA2iosAmfibianImplAnObject *new_ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_withComValsA2iosAmfibianImplAnObject_(IOSClass *anObjClass, IOSObjectArray *propertyMappers, ComValsA2iosAmfibianImplAnObject *parentMapper) {
  ComValsA2iosAmfibianImplAnObject *self = [ComValsA2iosAmfibianImplAnObject alloc];
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_withComValsA2iosAmfibianImplAnObject_(self, anObjClass, propertyMappers, parentMapper);
  return self;
}

void ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_(ComValsA2iosAmfibianImplAnObject *self, IOSClass *anObjClass, IOSObjectArray *propertyMappers) {
  (void) NSObject_init(self);
  self->attribMap_ = new_JavaUtilLinkedHashMap_init();
  [self init__WithIOSClass:anObjClass withComValsA2iosAmfibianImplAnAttribArray:propertyMappers];
}

ComValsA2iosAmfibianImplAnObject *new_ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_(IOSClass *anObjClass, IOSObjectArray *propertyMappers) {
  ComValsA2iosAmfibianImplAnObject *self = [ComValsA2iosAmfibianImplAnObject alloc];
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withComValsA2iosAmfibianImplAnAttribArray_(self, anObjClass, propertyMappers);
  return self;
}

void ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_withComValsA2iosAmfibianImplAnObject_(ComValsA2iosAmfibianImplAnObject *self, IOSClass *anObjClass, IOSObjectArray *propertyNames, ComValsA2iosAmfibianImplAnObject *parentMapper) {
  (void) NSObject_init(self);
  self->attribMap_ = new_JavaUtilLinkedHashMap_init();
  [self init__WithIOSClass:anObjClass withNSStringArray:propertyNames withComValsA2iosAmfibianImplAnObject:parentMapper];
}

ComValsA2iosAmfibianImplAnObject *new_ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_withComValsA2iosAmfibianImplAnObject_(IOSClass *anObjClass, IOSObjectArray *propertyNames, ComValsA2iosAmfibianImplAnObject *parentMapper) {
  ComValsA2iosAmfibianImplAnObject *self = [ComValsA2iosAmfibianImplAnObject alloc];
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_withComValsA2iosAmfibianImplAnObject_(self, anObjClass, propertyNames, parentMapper);
  return self;
}

void ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_(ComValsA2iosAmfibianImplAnObject *self, IOSClass *anObjClass, IOSObjectArray *propertyNames) {
  (void) NSObject_init(self);
  self->attribMap_ = new_JavaUtilLinkedHashMap_init();
  [self init__WithIOSClass:anObjClass withNSStringArray:propertyNames];
}

ComValsA2iosAmfibianImplAnObject *new_ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_(IOSClass *anObjClass, IOSObjectArray *propertyNames) {
  ComValsA2iosAmfibianImplAnObject *self = [ComValsA2iosAmfibianImplAnObject alloc];
  ComValsA2iosAmfibianImplAnObject_initWithIOSClass_withNSStringArray_(self, anObjClass, propertyNames);
  return self;
}

IOSObjectArray *ComValsA2iosAmfibianImplAnObject_stringsToAttribsWithNSStringArray_(ComValsA2iosAmfibianImplAnObject *self, IOSObjectArray *propertyNames) {
  IOSObjectArray *list = nil;
  if (propertyNames != nil) {
    list = [IOSObjectArray newArrayWithLength:propertyNames->size_ type:ComValsA2iosAmfibianImplAnAttrib_class_()];
    jint idx = 0;
    {
      IOSObjectArray *a__ = propertyNames;
      NSString * const *b__ = a__->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *propertyName = *b__++;
        ComValsA2iosAmfibianImplAnAttrib *a = new_ComValsA2iosAmfibianImplAnAttrib_initWithNSString_(propertyName);
        (void) IOSObjectArray_Set(list, idx++, a);
      }
    }
  }
  return list;
}

void ComValsA2iosAmfibianImplAnObject_initAttribsWithComValsA2iosAmfibianImplAnAttribArray_(ComValsA2iosAmfibianImplAnObject *self, IOSObjectArray *attribMappers) {
  {
    IOSObjectArray *a__ = attribMappers;
    ComValsA2iosAmfibianImplAnAttrib * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ComValsA2iosAmfibianImplAnAttrib * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ComValsA2iosAmfibianImplAnAttrib *pm = *b__++;
      [self addAttribWithComValsA2iosAmfibianImplAnAttrib:pm];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComValsA2iosAmfibianImplAnObject)
