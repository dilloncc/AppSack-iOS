/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2014 Google Inc.
 */

//
//  GTLServiceUserendpoint.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   userendpoint/v1
// Description:
//   This is an API
// Classes:
//   GTLServiceUserendpoint (0 custom class methods, 0 custom properties)

#import "GTLUserendpoint.h"

@implementation GTLServiceUserendpoint

#if DEBUG
// Method compiled in debug builds just to check that all the needed support
// classes are present at link time.
+ (NSArray *)checkClasses {
  NSArray *classes = [NSArray arrayWithObjects:
                      [GTLQueryUserendpoint class],
                      [GTLUserendpointAuthResponse class],
                      [GTLUserendpointCollectionResponseUser class],
                      [GTLUserendpointKey class],
                      [GTLUserendpointUser class],
                      nil];
  return classes;
}
#endif  // DEBUG

- (id)init {
  self = [super init];
  if (self) {
    // Version from discovery.
    self.apiVersion = @"v1";

    // From discovery.  Where to send JSON-RPC.
    // Turn off prettyPrint for this service to save bandwidth (especially on
    // mobile). The fetcher logging will pretty print.
    self.rpcURL = [NSURL URLWithString:@"https://amiable-reducer-470.appspot.com/_ah/api/rpc?prettyPrint=false"];
  }
  return self;
}

@end
