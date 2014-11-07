//
//  FirstViewController.m
//  HPF
//
//  Created by FI$H 2000 on 11/6/14.
//  Copyright (c) 2014 Objects In Space And Time. All rights reserved.
//

#import "HPFLoginViewController.h"
#import <TwitterKit/TwitterKit.h>

@interface HPFLoginViewController ()

@end

@implementation HPFLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TWTRLogInButton *logInButton = [TWTRLogInButton buttonWithLogInCompletion:^(TWTRSession *session, NSError *error) {
        // play with Twitter session
        if (session) {
            NSLog(@"Twitter user logged in: %@", [session userName]);
        } else {
            NSLog(@"ERROR: %@", [error localizedDescription]);
        }
    }];
    logInButton.center = self.view.center;
    [self.view addSubview:logInButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
