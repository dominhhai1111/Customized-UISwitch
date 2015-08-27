//
//  ViewController.m
//  UISwitch
//
//  Created by Do Minh Hai on 8/11/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backgound;

@end

@implementation ViewController

{
    CustomSwitch *mySwitch;
    
    BOOL firstimage;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    firstimage=true;
    mySwitch = [[CustomSwitch alloc] initWithFrame:CGRectMake(0, 0, 216, 80)];
                mySwitch.center = CGPointMake(self.view.bounds.size.width*0.5, 200);
                [self.view addSubview:mySwitch];
    [mySwitch addTarget:self
                 action:@selector(switchChange:)
    forControlEvents:UIControlEventValueChanged];
    
}
-(void) switchChange: (CustomSwitch*) customSwitch {
    if(customSwitch.value==1) {
        self.backgound.image = [UIImage imageNamed:@"backgroud2.jpg"];
        
        //firstimage=false;
    }
    else{
        self.backgound.image= [UIImage imageNamed:@"backgroud1.jpg"];
       
       // firstimage=true;
    }}




@end
