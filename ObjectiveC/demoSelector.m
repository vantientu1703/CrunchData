//
//  demoSelector.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 7/25/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "demoSelector.h"

@interface demoSelector ()
{
    NSTimer* _timer;
    
}
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation demoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(onTimer) userInfo:nil repeats:true];
    //[self performSelector:@selector(hideSlider) withObject:nil afterDelay:2];
}
-(void) onTimer{
    _slider.value+=0.05;
    if(_slider.value>=1.0){
        _slider.value=1.0;
        [_timer invalidate];
    }
}
- (IBAction)doCrunchData:(id)sender {
    //[self performSelector:@selector(crunchData) withObject:nil];
    //[self performSelectorInBackground:@selector(crunchData) withObject:nil];
    [self performSelectorOnMainThread:@selector(crunchData) withObject:nil waitUntilDone:true];
    NSLog(@"Hello world");
    //[self performSelectorOnMainThread:@selector(processData:) withObject:@{@"Tao":@"Dua"} waitUntilDone:true];
}

- (void) crunchData{
    [NSThread sleepForTimeInterval:2];
}
- (void) processData: (NSDictionary*) data{
    for (NSString* key in [data allKeys]){
        NSLog(@"%@ - %@",key,[data valueForKey:key]);
    }
}
-(void) hideSlider{
    _slider.hidden=true;
}
@end
