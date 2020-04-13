//
//  main.m
//  iosObjCHelloWorldSingleFileProgramatic
//
//  Created by Brad Barrows on 4/12/20.
//  Copyright © 2020 bbarrows. All rights reserved.
//

#import <UIKit/UIKit.h>


/*
@interface ViewController : UIViewController
@end

@interface ViewController ()
@end
*/

/*
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
@end
*/


/*
dlopen("/Library/Frameworks/PureLayout.framework/PureLayout", RTLD_GLOBAL | RTLD_NOW);

var a = UIApplication.sharedApplication

var kw = a.keyWindow

var r = UIScreen.mainScreen.bounds
var nw  = [[UIWindow alloc] initWithFrame:r]


var contv = [[UIView alloc] initForAutolayout]
nv.backgroundColor = NSColor.orangeColor

var bv = [[UIView alloc] init]
nv.backgroundColor = NSColor.blueColor

var rv = [[UIView alloc] init]
nv.backgroundColor = NSColor.redColor

var gv = [[UIView alloc] init]
nv.backgroundColor = NSColor.greenColor

var yv = [[UIView alloc] init]
nv.backgroundColor = NSColor.yellowColor

// width = r[1][0]
var sviews = @[bv, rv, gv, yv]

[sviews autoSetViewsDimension:ALDimensionWidth toSize:r[1][0]]
[sviews autoMatchViewsDimension:ALDimensionHeight]

[contv addSubview:bv]
[contv addSubview:rv]
[contv addSubview:gv]
[contv addSubview:yv]


var controller = [[UIViewController alloc] init]
controller.view = contv

nw.rootViewController = controller

// next line isnt necessary
a.keyWindow=nw
nw.makeKeyAndVisible()

// Then go back to springboard
kw.makeKeyAndVisible()
nw.dealloc()
*/



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
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
