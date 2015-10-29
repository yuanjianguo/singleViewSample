//
//  RadioView.m
//  zhengzai-tv
//
//  Created by dudu on 15/10/29.
//  Copyright © 2015年 zhengzai.tv. All rights reserved.
//

#import "RadioView.h"


@interface RadioView ()

@property (strong, nonatomic)NSTimer *timer;

@end

static RadioView *_inst;
@implementation RadioView


+ (RadioView *)shareInstance
{
    @synchronized(self) {
        static dispatch_once_t once;
        dispatch_once(&once, ^{
            if (!_inst) {
                _inst = [[self alloc]initWithFrame:CGRectMake(0, 0, 300, 50)];
                
            }
        });
    }
    return _inst;
}



- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self radioView];
        
        [self addjishuqiView];
    }
    return self;
}


- (void)addjishuqiView
{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 200, 50)];
    label.text = @"0";
    label.backgroundColor = [UIColor orangeColor];
    [self addSubview:label];
    
   _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(onAdd:) userInfo:label repeats:YES];
//    [_timer fire];
}

- (void)onAdd:(NSTimer *)timer
{
    UILabel *label = (UILabel *)timer.userInfo;
    NSString *str = label.text;
    
    NSInteger index = [str integerValue];
    index++;
    
    label.text = [NSString stringWithFormat:@"%ld",index];
}


- (void)stop
{
    [self.timer setFireDate:[NSDate distantFuture]];
}


- (void)refuse
{
    [self.timer setFireDate:[NSDate date]];
}


- (void)start
{
    [self.timer setFireDate:[NSDate date]];
}


- (void)radioView
{
    self.backgroundColor = [UIColor greenColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 50, CGRectGetHeight(self.frame));
    [btn setTitle:@"开始" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(onAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
}

- (void)onAction:(UIButton *)sender
{
    if ([sender.titleLabel.text isEqualToString:@"开始"]) {
        [self start];
        [sender setTitle:@"暂停" forState:UIControlStateNormal];
    }else
    {
        [self stop];
        [sender setTitle:@"开始" forState:UIControlStateNormal];
    }
}

- (id)reloadFrame:(CGRect)frame
{
    self.frame = frame;
    
    return self;
}


@end
