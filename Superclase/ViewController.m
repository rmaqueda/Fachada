//
//  ViewController.m
//  Superclase
//
//  Created by Ricardo Maqueda on 25/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "ViewController.h"
#import "MotorBusqueda.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nombre;
@property (weak, nonatomic) IBOutlet UILabel *resultado;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Action Methods

- (IBAction)busca:(id)sender {
    __weak typeof(self) weakSelf = self;
    [[MotorBusqueda sharedInstance] datosContacto:self.nombre.text completion:^(NSDictionary *dict, NSError *error) {
    
        if (!error) {
            if (dict) {
                    weakSelf.resultado.text = [dict objectForKey:@"Nombre"];
            }
            // TODO: gestinar errores.
        } else {
            NSLog(@"Parametro nulo");
        }
    }];
    
}

@end
