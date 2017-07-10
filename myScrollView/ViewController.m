//
//  ViewController.m
//  myScrollView
//
//  Created by swcl on 2017-07-10.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *mainView;
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *greenView;
@property (nonatomic, strong) UIView *yellowView;
@property (nonatomic, strong) UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    self.redView.backgroundColor = [UIColor redColor];
    
    self.greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    self.greenView.backgroundColor = [UIColor greenColor];
    
    self.blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    self.blueView.backgroundColor = [UIColor blueColor];
    
    self.yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.mainView];
    [self.mainView addSubview:self.redView];
    [self.mainView addSubview:self.greenView];
    [self.mainView addSubview:self.yellowView];
    [self.mainView addSubview:self.blueView];
}

- (void)viewDidAppear:(BOOL)animated {
    CGRect r = [self.mainView bounds];
    r.origin.y = -100;
    [self.mainView setFrame:r];
    
}


@end
