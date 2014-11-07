//
//  SecondViewController.h
//  HPF
//
//  Created by FI$H 2000 on 11/6/14.
//  Copyright (c) 2014 Objects In Space And Time. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>

@interface HPFChatViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSMutableArray* chat;
@property (nonatomic, strong) Firebase* firebase;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *nameField;

@end
