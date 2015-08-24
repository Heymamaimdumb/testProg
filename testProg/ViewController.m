//
//  ViewController.m
//  testProg
//
//  Created by Vladislav on 10.08.15.
//  Copyright (c) 2015 Vladislav. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#define ALPHA                   @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#define NUMERIC                 @"1234567890"
#define ALPHA_NUMERIC           ALPHA NUMERIC
#define log @"login"
#define pass @"password"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *passText;

@property (weak, nonatomic) IBOutlet UITextField *logText;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a
    
}





-(void)buttonPressed:(id)sender
{
    if (self.logText.text.length>0 ){
    if (([self.logText.text  isEqual: log] && [self.passText.text isEqual:pass]))
    {
        [self performSegueWithIdentifier:@"acceptLog" sender:nil];
    
    }
    else {UIAlertView *incorrectAlert = [[UIAlertView alloc]initWithTitle:@"Oops!" message:@"Your password or login is incorrect" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [incorrectAlert show];
        }
    }
    else {UIAlertView *nilAlert = [[UIAlertView alloc]initWithTitle:@"Oops!" message:@"Please, enter your login and password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
        [nilAlert show];
    
        }
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    - (BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
        
        
        NSCharacterSet *unacceptedInput = nil;
    
        unacceptedInput = [[NSCharacterSet characterSetWithCharactersInString:ALPHA_NUMERIC]invertedSet];
        return ([[string componentsSeparatedByCharactersInSet:unacceptedInput]count]<=1);
       
}

-(bool)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    
    
    
    return true;
}

@end



