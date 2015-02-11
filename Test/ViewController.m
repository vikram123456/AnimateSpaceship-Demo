//
//  ViewController.m
//  Test
//
//  Created by MSP IT Concepts on 14/10/14.
//  Copyright (c) 2014 MSP IT Concepts. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    IBOutlet UILabel * lblAnim;
    NSTimer* timer;
    int x;
    int y;
}

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
 
    x = lblAnim.frame.origin.x;
    y = lblAnim.frame.origin.y;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(animateLabel) userInfo:nil repeats:YES];
}

-(void) animateLabel{
    [lblAnim setFrame:CGRectMake(x,y,lblAnim.frame.size.width,lblAnim.frame.size.height)];
    x = x + 2;
    y = y - 2;
}


@end
