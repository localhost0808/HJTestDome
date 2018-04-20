//
//  ViewController.m
//  TestDemo
//
//  Created by Zs on 16/12/7.
//  Copyright © 2016年 Zs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString * str = @"“zs” 的 iPhone";
    
    NSString * strencoding = [NSString stringWithCString:[str UTF8String] encoding:NSUTF8StringEncoding];
    
    
#warning 下面UTF8-encoding编码 新旧是否形同
    
    
    
//    [str stringByAppendingString:@"%@",@"“zs”的phone"];
    NSString *urlStr = [NSString stringWithFormat:@"https://www.baidu.com/s?%@",[NSString stringWithUTF8String:"“zs” 的 iPhone"]];
    BOOL is9_0 = [[UIDevice currentDevice].systemVersion floatValue] < 9.0;
    NSString * encodingString;
    [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
#ifdef is9_0

   encodingString = [urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
#elseif
    encodingString = [urlStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
#endif
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    
    [manager GET:encodingString parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        UIWebView *web;
        
        responseObject;
        DLog(@"%@",responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
