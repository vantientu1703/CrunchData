//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Dictionary", MENU: @[
                                    @{TITLE: @"Basic A",CLASS: @"BasicA"},
                                    @{TITLE: @"Running Led ", CLASS: @"runningLed"}
                                    
                          ]};
    NSDictionary* intermediate = @{SECTION: @"Demo", MENU: @[
                                    @{TITLE: @"DemoSlider", CLASS: @"demoSelector"},
                                    @{TITLE: @"C-ObjectiveC", CLASS: @"CObjectiveC"},
                                    @{TITLE: @"CompareObject", CLASS:@"CompareObject"},
                                    @{TITLE: @"CustomSlider", CLASS:@"CustomSlider"},
                                    @{TITLE: @"Slider Rock", CLASS:@"SliderRock"},
                                    @{TITLE: @"CustomSwitch",CLASS:@"ViewController"}
                                  ]};
    NSDictionary* advanced = @{SECTION: @"NSArray", MENU: @[
                                    @{TITLE: @"CreateArray", CLASS: @"createArray"}
                                    //@{TITLE: @"CustomSlider", CLASS:@"CustomSlider"}
                                    
                                    ]};
    
    mainScreen.menu = @[basic, intermediate, advanced];
    mainScreen.title = @"Objective C Example";
    mainScreen.about = @"This is demo by Van Tien Tu";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
