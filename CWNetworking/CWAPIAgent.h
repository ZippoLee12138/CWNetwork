//
//  CWAPIAgent.h
//  CWNetworking
//
//  Created by lzb on 2017/2/20.
//  Copyright © 2017年 lzb的工程. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"


@interface CWAPIAgent : NSObject


+ (instancetype)sharedInstance;

- (NSInteger)POSTwithServerAdd:(NSString*)serverAdd param:(NSDictionary*)param;


@end
