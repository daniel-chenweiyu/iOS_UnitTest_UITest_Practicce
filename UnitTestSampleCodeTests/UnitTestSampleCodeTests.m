//
//  UnitTestSampleCodeTests.m
//  UnitTestSampleCodeTests
//
//  Created by DanielChen on 2017/5/18.
//  Copyright © 2017年 DanielChen. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface UnitTestSampleCodeTests : XCTestCase

@end

@implementation UnitTestSampleCodeTests {
    ViewController *vc;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    vc = [ViewController new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    vc = nil;
    [super tearDown];
}

- (void)testAdd {
    
    //Arrange
    double a = 4.2, b = 2.0;
    double expected = 6.2;
    //Action
    double actual = [vc addWithA:a withB:b];
    //Assert
    XCTAssertEqual(actual, expected,@"add method error");
}

- (void)testDeduct {
    
    //Arrange
    double a = 4.2, b = 2.0;
    double expected = 2.2;
    //Action
    double actual = [vc deductWithA:a withB:b];
    //Assert
    XCTAssertEqual(actual, expected,@"deduct method error");
}

- (void)testMulpity {
    
    //Arrange
    double a = 4.2, b = 2.0;
    double expected = 8.4;
    //Action
    double actual = [vc mulpityWithA:a withB:b];
    //Assert
    XCTAssertEqual(actual, expected,@"mulpity method error");
}

- (void)testRemove {
    
    //Arrange
    double a = 4.2, b = 2.0;
    double expected = 2.1;
    //Action
    double actual = [vc removeWithA:a withB:b];
    //Assert
    XCTAssertEqual(actual, expected,@"mulpity method error");
}
@end
