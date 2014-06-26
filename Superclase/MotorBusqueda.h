//
//  MotorBusqueda.h
//  Superclase
//
//  Created by Ricardo Maqueda on 25/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^CompletionBlock)(NSDictionary *, NSError *);

@interface MotorBusqueda : NSObject



+ (MotorBusqueda *)sharedInstance;
-(void)datosContacto:(NSString *)idContacto completion:(void(^)(NSDictionary *dict, NSError *error))completion;




@end
