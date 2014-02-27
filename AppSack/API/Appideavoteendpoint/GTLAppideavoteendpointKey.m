/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLAppideavoteendpointKey.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   appideavoteendpoint/v1
// Description:
//   This is an API
// Classes:
//   GTLAppideavoteendpointKey (0 custom class methods, 7 custom properties)

#import "GTLAppideavoteendpointKey.h"

// ----------------------------------------------------------------------------
//
//   GTLAppideavoteendpointKey
//

@implementation GTLAppideavoteendpointKey
@dynamic appId, complete, identifier, kind, name, namespaceProperty, parent;

+ (NSDictionary *)propertyToJSONKeyMap {
  NSDictionary *map =
    [NSDictionary dictionaryWithObjectsAndKeys:
      @"id", @"identifier",
      @"namespace", @"namespaceProperty",
      nil];
  return map;
}

@end