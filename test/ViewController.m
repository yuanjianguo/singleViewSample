//
//  ViewController.m
//  test
//
//  Created by zhengzai on 15/10/26.
//  Copyright © 2015年 zhengzai. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "RadioView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)push:(UIButton *)sender {
    [self.navigationController pushViewController:[[FirstViewController alloc]init] animated:YES];
    
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

@end
