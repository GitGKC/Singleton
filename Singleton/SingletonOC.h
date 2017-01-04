//
//  SingletonOC.h
//  Singleton
//
//  Created by GKC on 2017/1/4.
//  Copyright © 2017年 GKC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, InitType) {
    SynLock,
    GCD,
};

@interface SingletonOC : NSObject

+ (instancetype)sharedInstanceWith:(InitType)type;

@end
