//
//  UiWebView.m
//  testProg
//
//  Created by Vladislav on 24.08.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import "UiWebView.h"
#import "MBProgressHUD.h"

@interface UiWebView ()

@end

@implementation UiWebView

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:webView];
    [webView setDelegate:self];
    NSURL* url = [NSURL URLWithString:@"http://kinopoisk.ru"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [webView setScalesPageToFit:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)webViewDidStartLoad:(UIWebView *)webView
{
   [[UIApplication sharedApplication]setNetworkActivityIndicatorVisible:YES];
    [MBProgressHUD showHUDAddedTo:webView animated:YES];
   

}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{

    [[UIApplication sharedApplication]setNetworkActivityIndicatorVisible:NO];
     [MBProgressHUD hideAllHUDsForView:webView animated:YES];

}


@end
