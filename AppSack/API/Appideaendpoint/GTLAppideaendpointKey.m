/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLAppideaendpointKey.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   appideaendpoint/v1
// Description:
//   This is an API
// Classes:
//   GTLAppideaendpointKey (0 custom class methods, 7 custom properties)

#import "GTLAppideaendpointKey.h"

// ----------------------------------------------------------------------------
//
//   GTLAppideaendpointKey
//

@implementation GTLAppideaendpointKey
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
