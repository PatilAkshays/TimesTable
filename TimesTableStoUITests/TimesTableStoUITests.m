//
//  TimesTableStoUITests.m
//  TimesTableStoUITests
//
//  Created by Mac on 30/06/1938 Saka.
//  Copyright © 1938 Saka Akshay. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TimesTableStoUITests : XCTestCase

@end

@implementation TimesTableStoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end