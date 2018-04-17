//
//  ViewController.m
//  NSSet
//
//  Created by Наташа on 15.04.18.
//  Copyright © 2018 Наташа. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Create NSArray, containing 30 objects. Add duplicates to array
    NSArray *arr = [[NSArray arrayWithObjects:@"1",@"3",@"6",@"4",@"3",@"13",@"15",@"3",@"1",@"6",
                     @"14",@"11",@"13",@"7",@"3",@"4",@"21",@"22",@"19",@"9",
                     @"2",@"3",@"5",@"8",@"18",@"30",@"23",@"24",@"53",@"20",nil] retain];
    
    //Use NSSet to exclude duplicates from array
    NSSet *set1 = [[NSSet setWithArray:arr]retain];
    /* for (NSString *element in set1) {
        NSLog(@"element: %@", element);
    } */
    [set1 release];
    [arr release];
    
    //Check what is faster: Create an array of 100 numbers. Check whether number 74 is contained inside an array.Transform array into NSSet and check whether number 74 is contained inside NSSet.
    NSArray *arrayWith100Obj = [[NSArray arrayWithObjects: @"1",@"3",@"6",@"4",@"3",@"13",@"15",@"3",@"1",@"6",
                                 @"14",@"11",@"13",@"7",@"3",@"4",@"21",@"22",@"19",@"9",
                                 @"2",@"3",@"5",@"8",@"18",@"30",@"23",@"24",@"53",@"20",
                                 @"1",@"3",@"6",@"4",@"3",@"13",@"15",@"3",@"1",@"6",
                                 @"14",@"11",@"13",@"7",@"3",@"4",@"21",@"22",@"19",@"9",
                                 @"2",@"3",@"5",@"8",@"18",@"30",@"23",@"24",@"53",@"20",
                                 @"1",@"3",@"6",@"4",@"3",@"13",@"15",@"3",@"1",@"6",
                                 @"14",@"11",@"13",@"7",@"3",@"4",@"21",@"22",@"19",@"9",
                                 @"2",@"3",@"5",@"8",@"18",@"30",@"74",@"24",@"53",@"20",
                                 @"1",@"3",@"6",@"4",@"3",@"13",@"15",@"3",@"1",@"6",nil] retain];
    if([arrayWith100Obj containsObject: @"74"]){
        NSLog(@"Hooray,there's such a number in array");
    } else{
        NSLog(@"Sorry,there's no such number in array");
    }
    NSSet *set2 = [[NSSet setWithArray:arrayWith100Obj]retain];
    if ([set2 containsObject:@"74"]){
        NSLog(@"Hooray,there's such a number in set");    }
    else{
        NSLog(@"Sorry,there's no such number in array");
    }
    [set2 release];
    [arrayWith100Obj release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
