//
//  ViewController.m
//  AlphaTouch
//
//  Created by Kylie Tram Le on 11/28/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    // button that says "click me"
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(100, 100, 100, 44);
    [firstButton setTitle:@"Click Me!" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    
    // label with frame
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 220, 44)];
    firstLabel.text = @"Hello, welcome to my app!";
    [self.view addSubview:firstLabel];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touched the screen!");
}

@end
