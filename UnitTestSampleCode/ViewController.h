//
//  ViewController.h
//  UnitTestSampleCode
//
//  Created by DanielChen on 2017/5/18.
//  Copyright © 2017年 DanielChen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputATestField;
@property (weak, nonatomic) IBOutlet UITextField *inputBTestField;
@property (weak, nonatomic) IBOutlet UILabel *ansLabel;

#pragma mark - custom methods

- (double)addWithA:(double)varA withB:(double)varB;

- (double)deductWithA:(double)varA withB:(double)varB;

- (double)mulpityWithA:(double)varA withB:(double)varB;

- (double)removeWithA:(double)varA withB:(double)varB;

@end

