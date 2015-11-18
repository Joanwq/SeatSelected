//
//  ViewController.m
//  SeatSelect
//
//  Created by qianfeng on 15/11/16.
//  Copyright © 2015年 ThreeGroup. All rights reserved.
//

#import "ViewController.h"

#import "SeatViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)SelectSeat:(id)sender
{
    SeatViewController *seat = [[SeatViewController alloc] init];
    [self.navigationController pushViewController:seat animated:YES];
}

@end
