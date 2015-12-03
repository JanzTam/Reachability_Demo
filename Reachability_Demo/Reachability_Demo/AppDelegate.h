//
//  AppDelegate.h
//  Reachability_Demo
//
//  Created by kuaikuaizuche on 15/12/3.
//  Copyright © 2015年 JanzTam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong,nonatomic) Reachability * hostReach;

@end

