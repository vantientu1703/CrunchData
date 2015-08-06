//
//  CompareObject.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 7/26/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CompareObject.h"

@interface CompareObject ()

@end
@implementation SV
-(instancetype) init:(NSString *)name and:(NSString *)sdt{
    if(self=[super init]){
        
    }
    return self;
}
@end
@implementation Student
-(instancetype) init:(NSString *)fullName and:(NSString *)studentID{
    //if (self=[super init]) {
    
    //} Viết tắt
    // Cụ thể như sau:
    self=[super init];
    if(self){
        self.fullName=fullName;
        self.studentID=studentID;
    }
    return self;
}
-(BOOL) isEqual:(id)object{
    if([object isMemberOfClass:[Student class]]){
        Student* temp=(Student*) object;
        if([self.fullName isEqual:temp.fullName]
           && [self.studentID isEqual: temp.studentID]){
            return true;
        }else{
            return false;
        }
    }else{
        return false;
    }
}
@end

@implementation CompareObject

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* stringA=@"Hello world";
    NSString* stringB=[NSString stringWithFormat:@"%@ %@",@"Hello",@"world"];
    if(stringA == stringB){
        NSLog(@"2 string bang nhau");
    }else{
        if([stringA isEqual:stringB])
        NSLog(@"string A isEqual stringB");
    }
    
    Student* a=[[Student alloc] init:@"Van Tien Tu" and:@"1234"];
    Student* b=[[Student alloc] init:@"Van Tien Tu" and:@"1234"];
    if([a isEqual:b]){
        NSLog(@"2 Object bang nhau");
    }else{
        NSLog(@"2 object khac nhau");
    }
}

@end

