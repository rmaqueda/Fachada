//
//  BusquedaPadre.m
//  Superclase
//
//  Created by Ricardo Maqueda on 25/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "BusquedaPadre.h"


@implementation BusquedaPadre
{
    NSCache *_cache;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cache = [[NSCache alloc] init];
        [_cache setCountLimit:10];
    }
    return self;
}


- (BOOL)checkParamaters:(NSString *)idContact {
    if (!idContact || (idContact.length == 0) ) {
        return NO;
    }
    return YES;
}

- (void)giveContactData:(NSString *)idContact completionBlock:(void(^)(NSDictionary *dict, NSError *error))completion{
    if ([self checkParamaters:idContact]) {
        completion(nil,nil);
    } else {
        completion(nil, [[NSError alloc]init]);
    }
}

- (id)cacheHit:(NSString *)idContact {
    return [_cache objectForKey:idContact];
}

- (void)addCache:(id)contact name:(NSString *)name {
    [_cache setObject:contact forKey:name];
}

@end
