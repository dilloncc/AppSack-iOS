/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLUserendpointAuthResponse.h
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   userendpoint/v1
// Description:
//   This is an API
// Classes:
//   GTLUserendpointAuthResponse (0 custom class methods, 4 custom properties)

#if GTL_BUILT_AS_FRAMEWORK
  #import "GTL/GTLObject.h"
#else
  #import "GTLObject.h"
#endif

@class GTLUserendpointUser;

// ----------------------------------------------------------------------------
//
//   GTLUserendpointAuthResponse
//

@interface GTLUserendpointAuthResponse : GTLObject
@property (copy) NSString *apiKey;
@property (copy) NSString *error;
@property (retain) NSNumber *inError;  // boolValue
@property (retain) GTLUserendpointUser *user;
@end