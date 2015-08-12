//
//  HomeViewController.h
//  testProg
//
//  Created by Vladislav on 12.08.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"
@interface HomeViewController : UIViewController<SlideNavigationControllerDelegate>

-(IBAction)buttonPressed:(id)sender;

@end
