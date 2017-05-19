//
//  UnitTestSampleCodeUITests.m
//  UnitTestSampleCodeUITests
//
//  Created by DanielChen on 2017/5/18.
//  Copyright © 2017年 DanielChen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface UnitTestSampleCodeUITests : XCTestCase

@end

@implementation UnitTestSampleCodeUITests {
    ViewController *vc;
}

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    vc = [ViewController new];
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    vc = nil;
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    
    
    XCUIElement *textFieldA = [[[[[XCUIApplication alloc] init].otherElements containingType:XCUIElementTypeStaticText identifier:@"Ans"] childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:0];
    [textFieldA tap];
    [textFieldA typeText:@"2"];
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *textFieldB = [[[app.otherElements containingType:XCUIElementTypeStaticText identifier:@"Ans"] childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:1];
    [textFieldB tap];
    [textFieldB typeText:@"3"];
    [app.buttons[@"+"] tap];
    
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    //Arrange
    
    double a = [textFieldA.value doubleValue];
    double b = [textFieldB.value doubleValue];
    double expected = 5.0;
    //Action
    double actual = [vc addWithA:a withB:b];
    //Assert
    XCTAssertEqual(actual, expected,@"add method error");
    
    
}

@end
