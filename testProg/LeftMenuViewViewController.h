//
//  LeftMenuViewViewController.h
//  testProg
//
//  Created by Vladislav on 12.08.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"

@interface LeftMenuViewViewController : UIViewController <UITableViewDelegate, UITableViewDataSource,SlideNavigationControllerDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, assign) BOOL slideOutAnimationEnabled;


- (void)addMenuButton;

@end


