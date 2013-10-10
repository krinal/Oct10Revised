//
//  HelloAppDelegate.h
//  Hello
//
//  Created by nyuguest on 8/20/13.
//  Copyright (c) 2013 nyuguest. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface HelloAppDelegate: UIResponder <UIApplicationDelegate>  {
	View *view;
}

@property (strong, nonatomic) UIWindow *window;
@end
