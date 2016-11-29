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
    
    // first button
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    NSLog(@"%@", _fiftyPercentButton);
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    [self.fiftyPercentButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    [self.view addSubview:self.fiftyPercentButton];
    // call method for button being pressed -- addTarget:action:forControlEvents:
    // @selector: used to send in method names as params
    [self.fiftyPercentButton addTarget: self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    //second button
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.hundredPercentButton .frame = CGRectMake(100, 300, 100, 44);
    [self.hundredPercentButton  setTitle:@"Make 100%" forState:UIControlStateNormal];
    [self.view addSubview:self.hundredPercentButton];
    [self.hundredPercentButton  addTarget: self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
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

// method that controls button being pressed
- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    self.view.alpha = ((double)arc4random()/0x100000000);
    
    if ([sender isEqual:self.fiftyPercentButton]) { //isEqual = NSObject inherited method
        self.view.alpha = .5;
    } else {
        self.view.alpha = 1;
    }
}

@end
