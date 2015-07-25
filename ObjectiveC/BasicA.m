//
//  BasicA.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 7/25/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "BasicA.h"

@interface BasicA ()

@end

@implementation BasicA

- (void)viewDidLoad {
    [super viewDidLoad];
    [self writeln:@"Hello World"];
    [self writeln:@"Written by Tu"];
    [self sayFirstName:@"Steve" andLastName:@"Jobs"];
    float tempdegree=30.1;
    NSString* result=[NSString stringWithFormat:@"%2.1f degree equal to %3.1f",tempdegree,[self celciusToFahrenheigt:tempdegree ]];
    [self writeln:result];
    [self performSelector:@selector(celcius)];
    [self performSelector:@selector(celciusToFahremheigt2:) withObject:@(32.0)];
    
}
- (void) sayFirstName: (NSString*) firstName andLastName: (NSString*) lastName{
    NSLog(@"%@ %@",firstName,lastName);
}
- (float) celciusToFahrenheigt: (float) degree{
    return degree*1.8+32.0;
}
- (void) celcius{
    NSLog(@"Do nothing");
}
- (void) celciusToFahremheigt2: (NSNumber*) degree{
    float result= [degree floatValue]*1.8+32.0;
    NSString* num=[NSString stringWithFormat:@"%2.1f",result];
    [self writeln: num];
}
@end
