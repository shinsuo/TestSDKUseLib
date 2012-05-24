//
//  TestSDKuseLib.h
//  TestSDKuseLib
//
//  Created by Shin Suo on 12-5-24.
//  Copyright (c) 2012年 CocoaChina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"
#import "ASIHTTPRequestDelegate.h"

@interface TestSDKuseLib : NSObject <ASIHTTPRequestDelegate>
{
    NSMutableData *recivedData;
}

- (void)myConnection;

@end
