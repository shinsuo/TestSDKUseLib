//
//  TestSDKuseLib.m
//  TestSDKuseLib
//
//  Created by Shin Suo on 12-5-24.
//  Copyright (c) 2012年 CocoaChina. All rights reserved.
//

#import "TestSDKuseLib.h"


#define TEST_URL @"http://192.168.5.126/evt/?v=2"

@implementation TestSDKuseLib

- (id)init
{
    if (self = [super init]) {
        recivedData = [[NSMutableData alloc] init];
    }
    return self;
}

- (void)myConnection
{
    
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:TEST_URL]];
    [request setDelegate:self];
    [request startSynchronous];
}

#pragma mark ASIHttpRequestDelegate Method
- (void)requestFinished:(ASIHTTPRequest *)request
{
    NSString *recivedString = [[NSString alloc] initWithData:recivedData encoding:NSUTF8StringEncoding];
    NSLog(@"requestFinished:%@",recivedString);
    [recivedString release];
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
    NSLog(@"requestFailed:%@",request.url);
}

- (void)request:(ASIHTTPRequest *)request didReceiveData:(NSData *)data
{
    [recivedData appendData:data];
}


@end
