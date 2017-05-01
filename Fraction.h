//
//  Fraction.h
//  Fraction
//
//  Created by Vasilii on 28.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denumerator;

-(void) print;
//-(void) setNumerator:(int) n;
//-(void) setDenumerator:(int) d;
-(int) numerator;
-(int) denumerator;
- (double)convertToNum;

@end
