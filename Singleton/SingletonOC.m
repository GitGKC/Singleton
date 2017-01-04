//
//  SingletonOC.m
//  Singleton
//
//  Created by GKC on 2017/1/4.
//  Copyright © 2017年 GKC. All rights reserved.
//

#import "SingletonOC.h"

@interface SingletonOC () <NSCopying>

@end

//global var
static id _instance;

InitType _instanceInitType;

@implementation SingletonOC

+ (instancetype)sharedInstanceWith:(InitType)type {
    _instanceInitType = type;
    if (type == SynLock) {
        @synchronized (self) {
            if (_instance == nil) {
                _instance = [[self alloc] init];
            }
        }
    }
    
    else {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _instance = [[self alloc] init];
        });
    }
    return  _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (_instanceInitType == SynLock) {
        @synchronized (self) {
            if (_instance == nil) {
                _instance = [super allocWithZone:zone];
            }
        }
    }
    else {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _instance = [super allocWithZone:zone];
        });
    }
    return _instance;
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return _instance;
}

@end
