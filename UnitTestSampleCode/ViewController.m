//
//  ViewController.m
//  UnitTestSampleCode
//
//  Created by DanielChen on 2017/5/18.
//  Copyright © 2017年 DanielChen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    double a , b;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addBtnPress:(id)sender {
    
    [self getTextFieldValue];
    _ansLabel.text = [NSString stringWithFormat:@"%f",[self addWithA:a withB:b]];
}
- (IBAction)deductBtnPress:(id)sender {
    
    [self getTextFieldValue];
    _ansLabel.text = [NSString stringWithFormat:@"%f",[self deductWithA:a withB:b]];
}
- (IBAction)mulpityBtnPress:(id)sender {
    
    [self getTextFieldValue];
    _ansLabel.text = [NSString stringWithFormat:@"%f",[self mulpityWithA:a withB:b]];
}
- (IBAction)removeBtnPress:(id)sender {
   
    [self getTextFieldValue];
    _ansLabel.text = [NSString stringWithFormat:@"%f",[self removeWithA:a withB:b]];
}

#pragma mark - custom methods

- (double)addWithA:(double)varA withB:(double)varB {
    
    double ans = varA + varB;
    return ans;
}

- (double)deductWithA:(double)varA withB:(double)varB {
    
    double ans = varA - varB;
    return ans;
}

- (double)mulpityWithA:(double)varA withB:(double)varB {
    
    double ans = varA * varB;
    return ans;
}

- (double)removeWithA:(double)varA withB:(double)varB {
    
    double ans = varA / varB;
    return ans;
}

- (void)getTextFieldValue {
    
    a = [_inputATestField.text doubleValue];
    b = [_inputBTestField.text doubleValue];
}
@end
