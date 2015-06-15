//
//  Singleton.m
//  PlayingWithSoundCloud
//
//  Created by Michael Vilabrera on 5/24/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "Singleton.h"
#import "Constants.h"

@implementation Singleton

+ (instancetype)dataStore
{
    static Singleton *dataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataStore = [[self alloc] init];
    });
    return dataStore;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        // something
    }
    return self;
}

- (BOOL)connected
{
    return [AFNetworkReachabilityManager sharedManager].reachable;
}

- (void)getRequest
{
    NSString *baseURLWithTracks = [NSString stringWithFormat:@"%@/tracks/", BASE_URL];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:baseURLWithTracks parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //
        NSLog(@"get something: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        //
        NSLog(@"get error: %@", error);
    }];
}

- (void)postRequest
{
    NSString *baseURLWithTracks = [NSString stringWithFormat:@"%@/tracks/", BASE_URL];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:baseURLWithTracks parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //
        NSLog(@"post something: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        //
        NSLog(@"post error: %@", error);
    }];
}

@end
