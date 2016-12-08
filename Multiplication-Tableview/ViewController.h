//
//  ViewController.h
//  Multiplication-Tableview
//
//  Created by Student on 25/11/16.
//  Copyright © 2016 student. All rights reserved.
//




//awesd
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain) UILabel *lf1,*lf2;

@property (nonatomic,retain) UITextField *tf1,*tf2;

@property (nonatomic,retain) UIButton *calCulate;

@property (nonatomic,retain) UITableView *tableView;

@property (nonatomic,retain) NSMutableArray *arrayForRecords;



@end

