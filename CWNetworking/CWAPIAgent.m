//
//  CWAPIAgent.m
//  CWNetworking
//
//  Created by lzb on 2017/2/20.
//  Copyright © 2017年 lzb的工程. All rights reserved.
//

#import "CWAPIAgent.h"

@implementation CWAPIAgent


+ (instancetype)sharedInstance{
    
    static CWAPIAgent *sharedAPI = nil;
    
    static dispatch_once_t oncetoken;
    dispatch_once(&oncetoken,^{
        sharedAPI = [CWAPIAgent new];
    });
    
    return sharedAPI;
}




@end
