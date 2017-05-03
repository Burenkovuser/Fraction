//
//  Complex.h
//  Fraction
//
//  Created by Vasilii on 03.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal:(double) a andImaginary:(double) b;
-(Complex *) add: (Complex *) f;

@end
