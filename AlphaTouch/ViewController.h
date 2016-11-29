//
//  ViewController.h
//  AlphaTouch
//
//  Created by Kylie Tram Le on 11/28/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;

- (void)buttonPressed:(UIButton *)sender;
@end

