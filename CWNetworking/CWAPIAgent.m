//
//  CWAPIAgent.m
//  CWNetworking
//
//  Created by lzb on 2017/2/20.
//  Copyright © 2017年 lzb的工程. All rights reserved.
//

#import "CWAPIAgent.h"
#import "AFNetworking.h"

@interface CWAPIAgent ()

@property (nonatomic,strong) AFHTTPSessionManager *manager;


@end

@implementation CWAPIAgent


+ (instancetype)sharedInstance{
    
    static CWAPIAgent *sharedAPI = nil;
    
    static dispatch_once_t oncetoken;
    dispatch_once(&oncetoken,^{
        sharedAPI = [CWAPIAgent new];
    });
    
    return sharedAPI;
}


- (AFHTTPSessionManager *)manager{
    
    if (_manager == nil) {
        
        NSURL *baseUrl = [NSURL URLWithString:@"http://"];
        
        _manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseUrl];

    }
    
    return _manager;
    
}


- (NSInteger)POSTwithServerAdd:(NSString *)serverAdd param:(NSDictionary *)param{
    
    NSURLSessionDataTask *task = [self.manager POST:serverAdd parameters:param progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
    return task.taskIdentifier;
    
}



@end
