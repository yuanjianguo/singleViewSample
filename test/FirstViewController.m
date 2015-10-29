//
//  FirstViewController.m
//  test
//
//  Created by zhengzai on 15/10/29.
//  Copyright © 2015年 zhengzai. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "RadioView.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   
}
- (IBAction)push:(UIButton *)sender {
    
//    [self.navigationController pushViewController:[[SecondViewController alloc]init] animated:YES];
    
    [[RadioView shareInstance]reloadFrame:CGRectMake(0, 100, 320, 50)];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    RadioView *view = [[RadioView shareInstance]reloadFrame:CGRectMake(0, 400, 320, 50)];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
