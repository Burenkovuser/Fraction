//
//  Fraction.m
//  Fraction
//
//  Created by Vasilii on 28.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
    
@synthesize numerator, denumerator;

-(void)print {
    NSLog(@"%i/%i", numerator, denumerator);
}


- (double)convertToNum {
    if (denumerator != 0) {
        return (double)numerator / denumerator;
    } else {
        return  NAN;
    }
}
-(void)setTo:(int)n over:(int)d {
    numerator = n;
    denumerator = d;
}
- (void)add:(Fraction *)f {
    //сумма дробей a/b + c/d = ((a * d) + (b * c)) / b * d
    numerator = numerator * f.denumerator + denumerator * f.numerator;
    denumerator = denumerator * f.denumerator;
}

@end
