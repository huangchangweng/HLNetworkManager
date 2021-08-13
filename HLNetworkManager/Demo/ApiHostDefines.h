//
//  ApiHostDefines.h
//  HLNetworkManager
//
//  Created by JJB_iOS on 2021/8/12.
//

#ifndef ApiHostDefines_h
#define ApiHostDefines_h

#define DevelopSever    1
#define ProductSever    0

#if DevelopSever
/**测试服务器*/
#define kApiPrefix      @"https://cqbm.cqbdpt.cn"
#elif ProductSever
/**生产服务器*/
#define kApiPrefix      @""
#endif

#endif /* ApiHostDefines_h */
