//
//  Utility_Macro.h
//  TestDemo
//
//  Created by Zs on 16/12/7.
//  Copyright © 2016年 Zs. All rights reserved.
//

#ifndef Utility_Macro_h
#define Utility_Macro_h

#pragma mark -尺寸
#define Key_Window      [[[UIApplication sharedApplication] delegate]window]
#define ScreenWidth     [UIScreen mainScreen].bounds.size.width
#define ScreenHeight     [UIScreen mainScreen].bounds.size.height

#pragma mark -定义缩写
#define NSFormat(format, ...) [NSString stringWithFormat:@"format",##__VA_ARGS__]
#define IMG(img)        [UIImage imageNamed:img]


#endif /* Utility_Macro_h */
