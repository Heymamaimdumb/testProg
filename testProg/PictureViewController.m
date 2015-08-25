//
//  PictureViewController.m
//  testProg
//
//  Created by Vladislav on 25.08.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import "PictureViewController.h"
#import <UIKit/UIKit.h>

@interface PictureViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation PictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.scrollView.delegate = self;
    self.scrollView.scrollEnabled = YES;
    self.imageView.userInteractionEnabled = YES;
    self.scrollView.userInteractionEnabled = YES;
    
    UIImage *image = [[UIImage alloc]initWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"hdCar" ofType:@"jpg"]];
    
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.frame = (CGRect){.origin = CGPointMake(0.0f,0.0f), .size = image.size};
    [self.scrollView addSubview:self.imageView];
    self.imageView.layer.masksToBounds = YES;
    self.scrollView.contentSize = image.size;
    
    
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    CGRect scrollViewFrame = self.scrollView.frame;
    CGFloat scaleWidth = scrollViewFrame.size.width/self.scrollView.contentSize.width;
    CGFloat scaleHeight = scrollViewFrame.size.height/self.scrollView.contentSize.height;
    
    
    CGFloat minScale = MIN(scaleWidth,scaleHeight);
    self.scrollView.minimumZoomScale = 0.1f;
    self.scrollView.maximumZoomScale = 1.0f;
    self.scrollView.zoomScale = minScale;
    


}


-(UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
