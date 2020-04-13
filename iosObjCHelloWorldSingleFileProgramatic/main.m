//
//  main.m
//  iosObjCHelloWorldSingleFileProgramatic
//
//  Created by Brad Barrows on 4/12/20.
//  Copyright © 2020 bbarrows. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end


@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    CGRect rect = UIScreen.mainScreen.bounds;
    self.window = [[UIWindow alloc] initWithFrame:rect];
    
    UIView *contView = [[UIView alloc] initWithFrame:rect];
    contView.backgroundColor = UIColor.greenColor;
    
    UIViewController *controller = [[UIViewController alloc] init];
    controller.view = contView;
    
    self.window.rootViewController = controller;
    
    // next line isnt necessary
    // application.keyWindo = window;
    [self.window makeKeyAndVisible];
    
        
    return YES;
}

@end



int main(int argc, char * argv[]) { 
    // Could have used NSStringFromClass([AppDelegate class]
    return UIApplicationMain(argc, argv, nil, @"AppDelegate");
}
