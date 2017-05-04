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

//- (id) initWithNumerator: (int) numer andDenominator: (int) denom;

-(void) print;
-(double)convertToNum;
-(void) setTo:(int) n over: (int) d; //метод задает два параметра числитель и знаменатель
//-(void) add: (Fraction*) f; //ссылка на объект класса Fraction в котором будет передаваться дробь (функция для сложения дробей). Будем вызывть объект дробь и прибавлять к нему другую дробь.

-(Fraction*) add: (Fraction*) f;
-(void) reduce;  // приведелние к общему знаменталею
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(Fraction *) substract: (Fraction *) f;

//-(Fraction *) invert;


@end
