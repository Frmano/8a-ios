//
//  ViewController.h
//  8a-ios
//
//  Created by Uncovered on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *btnSignout;
- (IBAction)btnSignout_Clicked:(id)sender;
- (IBAction)btnWatchNews_Clicked:(id)sender;
- (IBAction)btnReportNews_Clicked:(id)sender;

@end

