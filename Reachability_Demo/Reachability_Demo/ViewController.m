//
//  ViewController.m
//  Reachability_Demo
//
//  Created by kuaikuaizuche on 15/12/3.
//  Copyright © 2015年 JanzTam. All rights reserved.
//

#import "ViewController.h"
#import "Reachability.h"

@interface ViewController ()
{
    UIAlertController * ac;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getCurrentReachability:(UIButton *)sender {
    Reachability * reach = [Reachability reachabilityForInternetConnection];
    NSString * tips = @"";
    switch (reach.currentReachabilityStatus)
    {
        case NotReachable:
            tips = @"无网络连接";
            break;
            
        case ReachableViaWiFi:
            tips = @"Wifi";
            break;
            
        case ReachableViaWWAN:
            NSLog(@"移动流量");
        case kReachableVia2G:
            tips = @"2G";
            break;
            
        case kReachableVia3G:
            tips = @"3G";
            break;
            
        case kReachableVia4G:
            tips = @"4G";
            break;
    }
    NSLog(@"tips = %@",tips);
    ac = [UIAlertController alertControllerWithTitle:@"提示" message:[NSString stringWithFormat:@"当前网络状态为:%@",tips] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * aa = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [ac dismissViewControllerAnimated:YES completion:nil];
        ac = nil;
    }];
    [ac addAction:aa];
    [self presentViewController:ac animated:YES completion:nil];
}
@end
