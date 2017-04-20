//
//  ViewController.h
//  8a-ios
//
//  Created by Uncovered on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtPhoneNumber;
- (IBAction)btnConfirm_Clicked:(id)sender;

@end

