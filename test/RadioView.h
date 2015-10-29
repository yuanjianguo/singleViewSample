//
//  RadioView.h
//  zhengzai-tv
//
//  Created by dudu on 15/10/29.
//  Copyright © 2015年 zhengzai.tv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RadioView : UIView

+ (RadioView *)shareInstance;

- (id)reloadFrame:(CGRect)frame;

- (void)start;

- (void)stop;

@end
