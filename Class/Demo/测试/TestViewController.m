//
//  TestViewController.m
//  TestDemo
//
//  Created by Hodge on 2018/1/2.
//  Copyright © 2018年 Zs. All rights reserved.
//

#import "TestViewController.h"
#import "HJCategoryHeader.h"

@interface TestViewController ()

@end

@implementation TestViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"2222222222");


    NSMutableArray *arr = [[NSMutableArray alloc] initWithArray:@[
                                                                  @{@"key":@"object"},
                                                                  @{@"key1":@"object1"}
                                                                  ]];


    NSArray * arr1 = @[@"1"];


    NSString *str; //空的
    [arr addObject:str];
    //    [arr objectAtIndex:2];




    self.view.backgroundColor = [UIColor redColor];

    _viewButton = [[UIView alloc] init];
    _viewButton.frame = CGRectMake(50, 200, 460, 50);
    _viewButton.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_viewButton];

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *viewXKey = @"viewX";
    NSString *viewYKey = @"viewY";
    NSString *colorKey = @"colorKey";

    BOOL isViewX;BOOL isViewY;BOOL isColor;
            isViewX = isViewY = isColor = YES;


//    BOOL is = [userDefaults objectForKey:colorKey] != nil;
    if ([userDefaults objectForKey:colorKey]) {
//        isViewX = [[userDefaults objectForKey:viewXKey] count] > 0;
//        isViewY = [[userDefaults objectForKey:viewYKey] count] > 0;
//        isColor = [[userDefaults objectForKey:colorKey] count] > 0;
//        isViewX = isViewY = isColor = YES;
    }

//    if (is) {
//        isViewX = [[userDefaults objectForKey:viewXKey] count] > 0;
//        isViewY = [[userDefaults objectForKey:viewYKey] count] > 0;
//        isColor = [[userDefaults objectForKey:colorKey] count] > 0;
//    }


    NSMutableArray *viewX = isViewX?[userDefaults objectForKey:viewXKey]:[[NSMutableArray alloc] initWithCapacity:0];
    NSMutableArray *viewY = isViewY?[userDefaults objectForKey:viewYKey]:[[NSMutableArray alloc] initWithCapacity:0];
    NSMutableArray *color = isColor?[userDefaults objectForKey:colorKey]:[[NSMutableArray alloc] initWithCapacity:0];
    
    int count = 50;
    for (int i = 0; i < count; i++) {
        if (!isViewX) {
            int x = arc4random()%300;
            int y = arc4random()%500;
            UIColor *randomColor = RANDOM_RGB;

            [viewX addObject:[NSNumber numberWithInt:x]];
            [viewY addObject:[NSNumber numberWithInt:y]];
            [color addObject:randomColor];
        }

        UIView *testView = [[UIView alloc] init];
        testView.frame = CGRectMake([viewX[i] intValue], [viewY[i] intValue], 50, 50);
        testView.backgroundColor = RANDOM_RGB;
        [self.view addSubview:testView];
    }
    if (viewY) {
        [userDefaults setObject:viewX forKey:viewXKey];
        [userDefaults setObject:viewY forKey:viewYKey];
        while (![userDefaults synchronize]) {
            [userDefaults synchronize];
        }
    }






}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
