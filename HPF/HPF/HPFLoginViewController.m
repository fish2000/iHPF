//
//  FirstViewController.m
//  HPF
//
//  Created by FI$H 2000 on 11/6/14.
//  Copyright (c) 2014 Objects In Space And Time. All rights reserved.
//

#import "HPFLoginViewController.h"
#import "HPFChatViewController.h"
#import <TwitterKit/TwitterKit.h>

@interface HPFLoginViewController ()

@end

@implementation HPFLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TWTRLogInButton *withTwitter = [TWTRLogInButton buttonWithLogInCompletion:^(TWTRSession *session, NSError *error) {
        // play with Twitter session
        if (session) {
            NSLog(@"Twitter user logged in: %@", [session userName]);
            HPFChatViewController *chat = [self.storyboard
                instantiateViewControllerWithIdentifier:@"ChatViewController"];
            [self presentViewController:chat animated:YES completion:nil];
        } else {
            NSLog(@"ERROR: %@", [error localizedDescription]);
            UIAlertView *alert = [[UIAlertView alloc]
                                    initWithTitle:@"Error Logging In"
                                    message:[error localizedDescription]
                                    delegate:nil
                                    cancelButtonTitle:@"OK"
                                    otherButtonTitles:nil];
            [alert show];
        }
    }];
    withTwitter.center = self.view.center;
    withTwitter.frame = CGRectOffset(withTwitter.frame, 0, (self.view.frame.size.height / 5));
    [self.view addSubview:withTwitter];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
