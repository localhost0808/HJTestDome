//
//  Number_Macro.h
//  TestDemo
//
//  Created by Zs on 16/12/7.
//  Copyright © 2016年 Zs. All rights reserved.
//

#ifndef Number_Macro_h
#define Number_Macro_h

#pragma mark -颜色
#define RGBA(R,G,B,A)   [UIColor colorWithRed:R/255.0f green:R/255.0f blue:B/255.0f alpha:A]
#define RGB(R,G,B)      RGBA(R,G,B,1.f)
#define RANDOM_RGB      RGB(arc4random()%256, arc4random()%256, arc4random()%256)

#endif /* Number_Macro_h */
