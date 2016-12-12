//
//  ViewController.m
//  HelloXSC
//
//  Created by ChenZheng on 2016/12/7.
//  Copyright © 2016年 qsbk. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "YYLabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet YYLabel *mainLabel;

@property (nonatomic ) NSInteger index;

@end

@implementation ViewController
- (IBAction)pushAction:(id)sender {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSLog(@"执行以下");
    });
    
    self.index ++;
    if (self.index % 3 == 1) {
        NSLog(@"清楚，下次应该还会执行");
        onceToken = 0;
    } else {
        NSLog(@"不清楚，下次xxx");
    }
    
    
    
    
    TestViewController *vc = [TestViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.index = 0;
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"(⊙o⊙)";
    NSLog(@"label = %@",self.mainLabel);
    self.mainLabel.text = @"∂ß≈ß¬…œ∂∑œø∑“œ®øπ˚ƒ…∂ß¬";
    self.mainLabel.numberOfLines = 0;
    self.mainLabel.textColor = [UIColor redColor];
    [self.mainLabel.layer setBorderColor:[UIColor blueColor].CGColor];
    [self.mainLabel.layer setBorderWidth:1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
