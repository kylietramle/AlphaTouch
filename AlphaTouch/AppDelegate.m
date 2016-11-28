//
//  AppDelegate.m
//  AlphaTouch
//
//  Created by Kylie Tram Le on 11/28/16.
//  Copyright © 2016 Kylie Tram Le. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // method name, param type, param name
    
    // get main screen, then its bounds
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    //allocate memory for UI Window and initialize object with frame size to bounds of main screen
    self.window = [[UIWindow alloc] initWithFrame:viewRect];
    
    // build root view controller
    UIViewController *colorTouchVC = [[UIViewController alloc] init];
    
    // build view the size of whole screen & set its controller
    UIView *colorView = [[UIView alloc] initWithFrame: viewRect];
    colorView.backgroundColor = [UIColor yellowColor];
    colorTouchVC.view = colorView;
    
    self.window.rootViewController = colorTouchVC;
    // receive all keyboards & nontouch events
    [self.window makeKeyAndVisible];
    NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end