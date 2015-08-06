//
//  CompareObject.h
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 7/26/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "ConsoleScreen.h"

@interface CompareObject : ConsoleScreen

@end
@interface Student : NSObject
@property(nonatomic,strong) NSString* fullName;
@property(nonatomic,strong) NSString* studentID;
-(instancetype) init: (NSString*)fullName and:(NSString*) studentID;
@end
@interface SV : NSObject
@property(nonatomic,strong) NSString* name;
@property(nonatomic,strong) NSString* sdt;
-(instancetype) init: (NSString*) name and:(NSString *) sdt;
@end