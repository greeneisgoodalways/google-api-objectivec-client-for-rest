// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   AdMob API (admob/v1)
// Description:
//   The Google AdMob API lets you programmatically get reports on earnings.
// Documentation:
//   https://developers.google.com/admob/api/

#import "GTLRAdMobQuery.h"

#import "GTLRAdMobObjects.h"

@implementation GTLRAdMobQuery

@dynamic fields;

@end

@implementation GTLRAdMobQuery_AccountsGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRAdMobQuery_AccountsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRAdMob_PublisherAccount class];
  query.loggingName = @"admob.accounts.get";
  return query;
}

@end

@implementation GTLRAdMobQuery_AccountsList

@dynamic pageSize, pageToken;

+ (instancetype)query {
  NSString *pathURITemplate = @"v1/accounts";
  GTLRAdMobQuery_AccountsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:nil];
  query.expectedObjectClass = [GTLRAdMob_ListPublisherAccountsResponse class];
  query.loggingName = @"admob.accounts.list";
  return query;
}

@end

@implementation GTLRAdMobQuery_AccountsMediationReportGenerate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRAdMob_GenerateMediationReportRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/mediationReport:generate";
  GTLRAdMobQuery_AccountsMediationReportGenerate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRAdMob_GenerateMediationReportResponse class];
  query.loggingName = @"admob.accounts.mediationReport.generate";
  return query;
}

@end

@implementation GTLRAdMobQuery_AccountsNetworkReportGenerate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRAdMob_GenerateNetworkReportRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/networkReport:generate";
  GTLRAdMobQuery_AccountsNetworkReportGenerate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRAdMob_GenerateNetworkReportResponse class];
  query.loggingName = @"admob.accounts.networkReport.generate";
  return query;
}

@end