//
//  ViewController.m
//  Multiplication-Tableview
//
//  Created by Student on 25/11/16.
//  Copyright © 2016 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view setBackgroundColor:[UIColor yellowColor]];
    
    _lf1 = [[UILabel alloc] initWithFrame:CGRectMake(25, 60, 40, 25)];
    [_lf1 setTextColor:[UIColor redColor]];
    [_lf1 setText:@"No 1:"];
    [self.view addSubview:_lf1];
    
    //add text field 1 :
    _tf1 = [[UITextField alloc] initWithFrame:CGRectMake(10, 90, 75, 30)];
    [_tf1 setTextColor:[UIColor redColor]];
    _tf1.borderStyle = UITextBorderStyleRoundedRect;
    [_tf1 setText:@"10"];
    [self.view addSubview:_tf1];
    
    
    _lf2 = [[UILabel alloc] initWithFrame:CGRectMake(115, 60, 45, 25)];
    [_lf2 setTextColor:[UIColor redColor]];
    [_lf2 setText:@"No 2:"];
    [self.view addSubview:_lf2];
    
    //add text field 2 :
    _tf2= [[UITextField alloc] initWithFrame:CGRectMake(100, 90, 75, 30)];
    _tf2.borderStyle = UITextBorderStyleRoundedRect;
    [_tf2 setTextColor:[UIColor redColor]];
    [_tf2 setText:@"10"];
    [self.view addSubview:_tf2];
    
    //add Calculate button :
    _calCulate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_calCulate setTintColor:[UIColor redColor]];
    [_calCulate setBackgroundColor:[UIColor whiteColor]];
    _calCulate.frame  = CGRectMake(200, 90, 100, 30);
    [_calCulate setTitle:@"Calculate" forState:UIControlStateNormal];
    [_calCulate addTarget:self action:@selector(CalculateTable) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_calCulate];
    
    //add TableView control
    // _tableView = [[UITableView alloc] ini initWithFrame:CGRectMake(12,  130, 250, 300)
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(12, 130, 300, 350) style:UITableViewStylePlain];
    //initWithFrame:
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    
    //add array:
    _arrayForRecords = [[NSMutableArray alloc] init];
    
    
}
-(void)CalculateTable
{
    [_arrayForRecords removeAllObjects];
    int no1 = [_tf1.text intValue];
    int no2 = [_tf2.text intValue];
    
    for(int iCnt = 1; iCnt<=no2; iCnt++)
    {
        NSString *temp = [NSString stringWithFormat:@"%d * %d = %d",no1,iCnt,no1*iCnt];
        [_arrayForRecords addObject:temp];
    }
    
    [_tableView reloadData];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    
    cell.textLabel.text = _arrayForRecords[indexPath.row];
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayForRecords.count;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
