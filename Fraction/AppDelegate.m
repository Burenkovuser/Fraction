//
//  AppDelegate.m
//  Fraction
//
//  Created by Vasilii on 28.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "Fraction.h"
#import "Complex.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /*
    Fraction *myFraction = [[Fraction alloc] init];
    
    [myFraction setNumerator:1];
    myFraction.denumerator = 3;
    
    NSLog(@"Значение myFraction равно:");
    [myFraction print];
    */
    
    id dataValue;
    
    Fraction *aFraction = [[Fraction alloc] init];
    Fraction *bFraction = [[Fraction alloc] init];
    
    Fraction *resultFraction;
    
    [aFraction setTo:8 over:7];
    [bFraction setTo:13 over:15];
    
    [aFraction print];
    NSLog(@"+");
    [bFraction print];
    NSLog(@"=");
    
    resultFraction = [aFraction add:bFraction];
    [resultFraction print];
   
    [aFraction print];
    NSLog(@"*");
    [bFraction print];
    NSLog(@"=");
    
    resultFraction = [aFraction multiply:bFraction];
    [resultFraction print];
    
    [aFraction print];
    NSLog(@"/");
    [bFraction print];
    NSLog(@"=");
    
    resultFraction = [aFraction divide:bFraction];
    [resultFraction print];
    
    [aFraction print];
    NSLog(@"-");
    [bFraction print];
    NSLog(@"=");
    
    resultFraction = [aFraction substract:bFraction];
    [resultFraction print];
    
    
    //Полиморфизм одно имя различные классы: у Fraction и Complex методы с одинаковыми названиями add имеющие разные реализацию, но в зависимости от получателя выбирается нужныq метод. Возможность использования одного имени в разных классах и есть полиморфизм.
    
    Fraction *f1 = [[Fraction alloc] init];
    Fraction *f2 = [[Fraction alloc] init];
    Fraction * fractionResult;
    
    Complex *c1 = [[Complex alloc] init];
    Complex *c2 = [[Complex alloc] init];
    Complex *complexResult;
    
    [f1 setTo:1 over:10];
    [f2 setTo:2 over:15];
    
    [c1 setReal:18.0 andImaginary:2.5];
    [c2 setReal:-5.0 andImaginary:3.2];
    
    //складыаем и выводим числа
    [f1 print];
    NSLog(@"+");
    [f2 print];
    fractionResult = [f1 add:f2];
    [fractionResult print];
    NSLog(@"\n");
    
    [c1 print];
    NSLog(@"+");
    [c2 print];
    complexResult = [c1 add:c2];
    [complexResult print];
    
    //Динамически контроль типов и связывание. id может хранить любой тип данных. Система принимает решение о типе данных и его методе, во время выполнения, а не во время компиляции. В начале проверяется класс объекта хранящегося в id и затем определяется какой метод использовать.
    
    dataValue = f1;
    [dataValue print];
    
    dataValue = c1;
    [dataValue print];
    
    
    
    //[aFraction add:bFraction];
    //[aFraction print];
    
    //[aFraction reduce];
    //[aFraction print];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
