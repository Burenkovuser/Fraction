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
/*
- (id) initWithNumerator: (int) numer andDenominator: (int) denom
{
    self = [super init];
    
    if (self)
    {
        numerator = numer;
        denumerator = denom;
    }
    
    return self;
}
*/

-(void)print {
    int k;
    if (numerator > denumerator) {
        k = numerator / denumerator;
        numerator = numerator - denumerator;
        NSLog(@"%i %i/%i", k, numerator, denumerator);
    }
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
/*
- (void)add:(Fraction *)f {
    //сумма дробей a/b + c/d = ((a * d) + (b * c)) / b * d
    numerator = numerator * f.denumerator + denumerator * f.numerator;
    denumerator = denumerator * f.denumerator;
    
    [self reduce];// сокращаем дробь внутри метода отправляя add reduce
}
*/
- (Fraction*) add:(Fraction *) f {
    Fraction * result = [[Fraction alloc] init];
    result.numerator = (numerator * f.denumerator) + (denumerator * f.numerator);
    result.denumerator = denumerator * f.denumerator;
    
    [result reduce];
    return result;
}

-(void)reduce {
    int u = numerator; //6
    int v = denumerator;//8
    int temp;
    
    while (v != 0) {// выдим из цикла когда v будет равен нулю 6->8->2->0
        temp = u % v;
        u = v; // числителю присваиваем делитель u = 6 -> 6 -> 2
        v = temp; // присваиваем делитею верменное значение 6 -> 2 -> 0
    }
    numerator /= u;
    denumerator /=u;
}

-(Fraction*) multiply: (Fraction*) f {
    Fraction * result = [[Fraction alloc] init];
    result.numerator = numerator * f.numerator;
    result.denumerator = denumerator * f.denumerator;
    
    [result reduce];
    return result;
}

-(Fraction*) divide: (Fraction*) f {
    //деление дробей (a/b) / (c/d) = (a * d) / (b * c)
    
    Fraction * result = [[Fraction alloc] init];
    result.numerator = numerator * f.denumerator;
    result.denumerator = denumerator * f.numerator;
    
    [result reduce];
    return result;
}

-(Fraction*) substract: (Fraction*) f {
    //вычитание дробей a/b - c/d = ((a * d) - (b * c)) / b * d
    
    Fraction *result = [[Fraction alloc] init];
    result.numerator = (numerator * f.denumerator) - (denumerator * f.numerator);
    result.denumerator = denumerator * f.denumerator;
    
    [result reduce];
    return  result;
}
/*
-(Fraction *) invert
{
    Fraction *result = [[Fraction alloc] initWithNumerator:denumerator andDenominator:numerator];
    [result reduce];
    return result;
    
}
*/

@end
