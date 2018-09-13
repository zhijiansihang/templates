//
//  MessageResponse.m
//
//  Created by 代码生成器1.0
//

#import <objc/runtime.h>
#import "MessageResponse.h"

@interface MessageResponse ()

@property (nonatomic, copy, readwrite) NSString *responseString;

@end

@implementation MessageResponse

+ (id)responseWithReponseData:(NSData*)responseData {
    MessageResponse *response = [[self class]alloc];
    response = [response initWithReponseData:responseData];
    return response;
}

- (id)initWithReponseData:(NSData*)responseData {
    if ((self = [super init])) {
        self.responseString = [[NSString alloc]initWithData:responseData
                                                   encoding:NSUTF8StringEncoding];
        NSLog(@"响应报文:\n%@", self.responseString);
        [self fromString: self.responseString];
    }
    return self;
}

@end
