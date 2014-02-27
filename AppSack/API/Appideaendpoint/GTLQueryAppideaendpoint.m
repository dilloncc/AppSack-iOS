/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLQueryAppideaendpoint.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   appideaendpoint/v1
// Description:
//   This is an API
// Classes:
//   GTLQueryAppideaendpoint (6 custom class methods, 6 custom properties)

#import "GTLQueryAppideaendpoint.h"

#import "GTLAppideaendpointAppIdea.h"
#import "GTLAppideaendpointCollectionResponseAppIdea.h"

@implementation GTLQueryAppideaendpoint

@dynamic cursor, fields, identifier, limit, userId, vote;

+ (NSDictionary *)parameterNameMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:@"id"
                                forKey:@"identifier"];
  return map;
}

#pragma mark -
#pragma mark Service level methods
// These create a GTLQueryAppideaendpoint object.

+ (id)queryForGetAppIdeaWithIdentifier:(long long)identifier {
  NSString *methodName = @"appideaendpoint.getAppIdea";
  GTLQueryAppideaendpoint *query = [self queryWithMethodName:methodName];
  query.identifier = identifier;
  query.expectedObjectClass = [GTLAppideaendpointAppIdea class];
  return query;
}

+ (id)queryForInsertAppIdeaWithObject:(GTLAppideaendpointAppIdea *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"appideaendpoint.insertAppIdea";
  GTLQueryAppideaendpoint *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLAppideaendpointAppIdea class];
  return query;
}

+ (id)queryForListAppIdea {
  NSString *methodName = @"appideaendpoint.listAppIdea";
  GTLQueryAppideaendpoint *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLAppideaendpointCollectionResponseAppIdea class];
  return query;
}

+ (id)queryForListAppIdeasByUserIdWithUserId:(long long)userId
                                        vote:(NSInteger)vote {
  NSString *methodName = @"appideaendpoint.listAppIdeasByUserId";
  GTLQueryAppideaendpoint *query = [self queryWithMethodName:methodName];
  query.userId = userId;
  query.vote = vote;
  query.expectedObjectClass = [GTLAppideaendpointCollectionResponseAppIdea class];
  return query;
}

+ (id)queryForRemoveAppIdeaWithIdentifier:(long long)identifier {
  NSString *methodName = @"appideaendpoint.removeAppIdea";
  GTLQueryAppideaendpoint *query = [self queryWithMethodName:methodName];
  query.identifier = identifier;
  return query;
}

+ (id)queryForUpdateAppIdeaWithObject:(GTLAppideaendpointAppIdea *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"appideaendpoint.updateAppIdea";
  GTLQueryAppideaendpoint *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLAppideaendpointAppIdea class];
  return query;
}

@end