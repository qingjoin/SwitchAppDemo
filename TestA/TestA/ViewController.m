//
//  ViewController.m
//  TestA
//
//  Created by qingyun on 8/29/13.
//  Copyright (c) 2013 qingyun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)gotoTestB:(id)sender
{
    NSURL  *urlT = [NSURL URLWithString:@"TestB://XXXXXXX"];
    //注意“：//”后面可以任意传参数。这些参数传过去后当跳到B时会在-(BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url 这个方法里实现。
    
    if ([[UIApplication sharedApplication] canOpenURL:urlT])
    {
        [[UIApplication sharedApplication] openURL:urlT];
    }
}


@end
