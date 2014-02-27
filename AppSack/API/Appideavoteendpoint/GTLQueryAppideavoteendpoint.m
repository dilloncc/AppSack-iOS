/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLQueryAppideavoteendpoint.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   appideavoteendpoint/v1
// Description:
//   This is an API
// Classes:
//   GTLQueryAppideavoteendpoint (6 custom class methods, 6 custom properties)

#import "GTLQueryAppideavoteendpoint.h"

#import "GTLAppideavoteendpointAppIdeaVote.h"
#import "GTLAppideavoteendpointAppIdeaVoteCollection.h"
#import "GTLAppideavoteendpointCollectionResponseAppIdeaVote.h"

@implementation GTLQueryAppideavoteendpoint

@dynamic appIdeaId, cursor, fields, identifier, limit, vote;

+ (NSDictionary *)parameterNameMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObject:@"id"
                                forKey:@"identifier"];
  return map;
}

#pragma mark -
#pragma mark Service level methods
// These create a GTLQueryAppideavoteendpoint object.

+ (id)queryForGetAppIdeaVoteWithIdentifier:(long long)identifier {
  NSString *methodName = @"appideavoteendpoint.getAppIdeaVote";
  GTLQueryAppideavoteendpoint *query = [self queryWithMethodName:methodName];
  query.identifier = identifier;
  query.expectedObjectClass = [GTLAppideavoteendpointAppIdeaVote class];
  return query;
}

+ (id)queryForGetVotesByAppIdeaWithAppIdeaId:(long long)appIdeaId
                                        vote:(NSInteger)vote {
  NSString *methodName = @"appideavoteendpoint.getVotesByAppIdea";
  GTLQueryAppideavoteendpoint *query = [self queryWithMethodName:methodName];
  query.appIdeaId = appIdeaId;
  query.vote = vote;
  query.expectedObjectClass = [GTLAppideavoteendpointAppIdeaVoteCollection class];
  return query;
}

+ (id)queryForInsertAppIdeaVoteWithObject:(GTLAppideavoteendpointAppIdeaVote *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"appideavoteendpoint.insertAppIdeaVote";
  GTLQueryAppideavoteendpoint *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLAppideavoteendpointAppIdeaVote class];
  return query;
}

+ (id)queryForListAppIdeaVote {
  NSString *methodName = @"appideavoteendpoint.listAppIdeaVote";
  GTLQueryAppideavoteendpoint *query = [self queryWithMethodName:methodName];
  query.expectedObjectClass = [GTLAppideavoteendpointCollectionResponseAppIdeaVote class];
  return query;
}

+ (id)queryForRemoveAppIdeaVoteWithIdentifier:(long long)identifier {
  NSString *methodName = @"appideavoteendpoint.removeAppIdeaVote";
  GTLQueryAppideavoteendpoint *query = [self queryWithMethodName:methodName];
  query.identifier = identifier;
  return query;
}

+ (id)queryForUpdateAppIdeaVoteWithObject:(GTLAppideavoteendpointAppIdeaVote *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"appideavoteendpoint.updateAppIdeaVote";
  GTLQueryAppideavoteendpoint *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLAppideavoteendpointAppIdeaVote class];
  return query;
}

@end