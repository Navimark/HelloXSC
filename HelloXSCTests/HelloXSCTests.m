//
//  HelloXSCTests.m
//  HelloXSCTests
//
//  Created by ChenZheng on 2016/12/7.
//  Copyright © 2016年 qsbk. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface HelloXSCTests : XCTestCase

@end

@implementation HelloXSCTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSLog(@"阿西吧setUp");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@"阿西吧tearDown");
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"阿西吧testExample");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        NSInteger max = 12345678;
        NSLog(@"max = %@",@(max));
        for (NSInteger i = 0; i != max ; ++i) {
            CGFloat j = i/3.333333;
            j = j + 6.0012;
            j--;
//            NSLog(@"j = %@",@(j));
        }
    }];
}

@end
