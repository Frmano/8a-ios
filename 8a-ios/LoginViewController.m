//
//  ViewController.m
//  8a-ios
//
//  Created by Uncovered on 4/20/17.
//  Copyright © 2017 Allfree Group LLC. All rights reserved.
//

#import "LoginViewController.h"
#import "AFNetworking.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnConfirm_Clicked:(id)sender {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSDictionary *params = @{
                             @"phoneNumber":_txtPhoneNumber.text
                             };
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [manager POST:@"http://dev-api.wwl.tv/api/v1/login/request-code" parameters:params progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSDictionary *jsonDict = (NSDictionary *) responseObject;
        NSString *res = [NSString stringWithFormat:@"%@", [jsonDict objectForKey:@"message"]];
        NSLog(@"Result: %@", res);
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];}
@end
