//
//  Application_Macro.h
//  TestDemo
//
//  Created by Zs on 16/12/7.
//  Copyright © 2016年 Zs. All rights reserved.
//

#ifndef Application_Macro_h
#define Application_Macro_h

#ifdef DEBUG
#define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#define HLog(fmt, ...) NSLog((@" [Line %d] " fmt), __LINE__, ##__VA_ARGS__);
#else
#define DLog(...)
#endif


#endif /* Application_Macro_h */
