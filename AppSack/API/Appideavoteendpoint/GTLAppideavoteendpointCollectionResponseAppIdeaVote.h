/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLAppideavoteendpointCollectionResponseAppIdeaVote.h
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   appideavoteendpoint/v1
// Description:
//   This is an API
// Classes:
//   GTLAppideavoteendpointCollectionResponseAppIdeaVote (0 custom class methods, 2 custom properties)

#if GTL_BUILT_AS_FRAMEWORK
  #import "GTL/GTLObject.h"
#else
  #import "GTLObject.h"
#endif

@class GTLAppideavoteendpointAppIdeaVote;

// ----------------------------------------------------------------------------
//
//   GTLAppideavoteendpointCollectionResponseAppIdeaVote
//

// This class supports NSFastEnumeration over its "items" property. It also
// supports -itemAtIndex: to retrieve individual objects from "items".

@interface GTLAppideavoteendpointCollectionResponseAppIdeaVote : GTLCollectionObject
@property (retain) NSArray *items;  // of GTLAppideavoteendpointAppIdeaVote
@property (copy) NSString *nextPageToken;
@end
