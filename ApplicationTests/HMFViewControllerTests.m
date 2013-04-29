//
//  HMFViewControllerTests.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/4/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//


#import <SenTestingKit/SenTestingKit.h>

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

#define MOCKITO_SHORTHAND
#import <OCMockitoIOS/OCMockitoIOS.h>

#import <MapKit/MKUserLocation.h>
#import <MapKit/MKTypes.h>

#import "HMFViewController.h"

@interface HMFViewControllerTests : SenTestCase

@property (nonatomic, strong) HMFViewController *testObj;

@end

@implementation HMFViewControllerTests

- (void)setUp
{
    self.testObj = [[HMFViewController alloc] initWithNibName:@"HMFViewController" bundle:nil];
    assertThat(self.testObj.view, notNilValue());   // Forces loading the view
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testViewControllerInstantiates
{
    assertThat(self.testObj, notNilValue());
}

#pragma mark - MapView

- (void)testDisplaysMapView
{
    assertThat(self.testObj.mapView, notNilValue());
}

- (void)testMapShowsUserLocation
{
    assertThatBool(self.testObj.mapView.showsUserLocation, equalToBool(YES));
}

- (void)testCenterMapOnUser
{
    [self.testObj centerMapOnUser];
    MKUserTrackingMode mode = self.testObj.mapView.userTrackingMode;
    STAssertEquals(mode,MKUserTrackingModeFollow,@"mode not MKUserTrackingModeFollow");
}

#pragma mark - Gestures

- (void)testMapTapRecognizer
{
    [self.testObj viewDidLoad];
    
    // Test that map has a tap recognizer
    MKMapView *map = self.testObj.mapView;
    NSArray *gestureRecognizers = [map gestureRecognizers];
    assertThat(gestureRecognizers, notNilValue());
    assertThat(gestureRecognizers, isNot(empty()));
    UIGestureRecognizer *tapRecognizer = gestureRecognizers[0];
    assertThat(tapRecognizer, instanceOf([UITapGestureRecognizer class]));
    
    // ... and that it is connected to handleTap
    // Note: don't see how to do this.
    
}

#pragma mark - Time display

- (void)testDisplaysTimeView
{
    assertThat(self.testObj.timeView, notNilValue());
}

- (void)testTimeTextDisplay
{
    self.testObj.timeText = @"12:34";
    NSString *readValue = self.testObj.timeView.text;
    assertThat(readValue, is(@"12:34"));
}

- (void)testTimeTextDisplayIsCopiedNotReferenced
{
    NSString *testText = @"12:34";
    self.testObj.timeText = testText;
    testText = @"10:56";
    NSString *readValue = self.testObj.timeView.text;
    assertThat(readValue, is(@"12:34"));
}

- (void)testUpdateTimeString
{
    [self.testObj updateTimeString:@"11:23"];
    NSString *readValue = self.testObj.timeView.text;
    assertThat(readValue, is(@"11:23"));
}

- (void)testThatTimeIsInitiallyBlank
{
    NSString *readValue = self.testObj.timeView.text;
    assertThat(readValue, is(@""));
}

@end
