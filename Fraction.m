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

- (void)setNumerator:(int)n {
    numerator = n;
}

- (void)setDenumerator:(int)d {
    denumerator = d;
}

-(int)numerator {
    return numerator;
}

-(int)denumerator {
    return denumerator;
}

- (double)convertToNum {
    if (denumerator != 0) {
        return (double)numerator / denumerator;
    } else {
        return  NAN;
    }
}
@end
