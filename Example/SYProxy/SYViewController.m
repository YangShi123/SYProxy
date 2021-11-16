//
//  SYViewController.m
//  SYProxy
//
//  Created by YangShi123 on 11/16/2021.
//  Copyright (c) 2021 YangShi123. All rights reserved.
//

#import "SYViewController.h"
#import "SYProxy.h"

@interface SYViewController ()

@property (nonatomic, strong) NSTimer * timer;

@end

@implementation SYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[SYProxy proxyWithTarget:self] selector:@selector(test) userInfo:nil repeats:YES];
}

- (void)test {
    NSLog(@"任务");
}

- (void)dealloc {
    [self.timer invalidate];
    NSLog(@"%s", __func__);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
