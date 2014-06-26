//
//  FacebookContact.m
//  Superclase
//
//  Created by Ricardo Maqueda on 25/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "FacebookContact.h"

@implementation FacebookContact


+ (instancetype)sharedInstance {
    static FacebookContact *_sharedFacebook = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedFacebook = [[FacebookContact alloc] init];
    });
    
    return _sharedFacebook;
}


- (void)giveContactData:(NSString *)idContact completionBlock:(void(^)(NSDictionary *dict, NSError *error))completion {
    
    if ([self checkParamaters:idContact]) {
        
        NSDictionary *result = [self cacheHit:idContact];
        
        if (result) {
            completion(result, nil);
        } else {
            completion([self giveFacebookDataForContact:idContact], nil);
        }
    } else {
        completion(nil,[[NSError alloc]init]);
    }
}

- (NSDictionary *)giveFacebookDataForContact:(NSString *)idContact {
    //TODO Metodo no implementado
    
    NSDictionary *result = @{@"Nombre" : @"Pepito"};
    [self addCache:result name:idContact];
    
    return result;
}

@end
