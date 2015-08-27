//
//  CustomSwitch.m
//  UISwitch
//
//  Created by Do Minh Hai on 8/11/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "CustomSwitch.h"
@import UIKit;
@implementation CustomSwitch
{
    UIButton *_buttonON ;
    UIButton *_buttonOFF ;
    //UIBackgroundTaskIdentifier *_background;
    //UIBackgroundFetchResult *_background;
    UIImageView *_background;
    
}
-(instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 216, 80)];
    _buttonON = [[UIButton alloc] initWithFrame:CGRectMake(20,30, 108, 80)];
    _buttonOFF = [[UIButton alloc] initWithFrame:CGRectMake(92, 30, 108, 80)];
       [_buttonOFF addTarget:self
                   action:@selector(pressOFF)
         forControlEvents:UIControlEventTouchUpInside];
    [_buttonON addTarget:self
                   action:@selector(pressON)
         forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:_buttonOFF];
    [self addSubview:_buttonON];
    self.value = false;
    return self;
}
-(void) pressOFF {
    self.value = true;
}
-(void) pressON {
    self.value = false;
}
-(BOOL) getValue {
    return _value;
}
-(void) setValue:(BOOL)value{
    _value = value;
    if (_value) {
         [_buttonOFF setImage:[UIImage imageNamed:@"Offwhite"] forState:UIControlStateNormal];
        [_buttonON setImage:[UIImage imageNamed:@"Onwhite"] forState:UIControlStateNormal];
       
    }else {
        [_buttonOFF setImage:[UIImage imageNamed:@"Offblack"] forState:UIControlStateNormal];
        [_buttonON setImage:[UIImage imageNamed:@"Onblack"] forState:UIControlStateNormal];
        
       
    }
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end
