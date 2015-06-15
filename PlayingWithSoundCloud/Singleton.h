//
//  Singleton.h
//  PlayingWithSoundCloud
//
//  Created by Michael Vilabrera on 5/24/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface Singleton : NSObject

+ (instancetype)dataStore;
- (instancetype)init;
- (BOOL)connected;

@end
