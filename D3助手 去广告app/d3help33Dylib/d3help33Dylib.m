//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  d3help33Dylib.m
//  d3help33Dylib
//
//  Created by nanfeng on 2019/1/18.
//  Copyright (c) 2019年 cwq. All rights reserved.
//

#import "d3help33Dylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>
#import <MDCycriptManager.h>

CHConstructor{
    printf(INSERT_SUCCESS_WELCOME);
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        
#ifndef __OPTIMIZE__
        CYListenServer(6666);

        MDCycriptManager* manager = [MDCycriptManager sharedInstance];
        [manager loadCycript:NO];

        NSError* error;
        NSString* result = [manager evaluateCycript:@"UIApp" error:&error];
        NSLog(@"result: %@", result);
        if(error.code != 0){
            NSLog(@"error: %@", error.localizedDescription);
        }
#endif
        
    }];
}


CHDeclareClass(OSTPAdManager)
CHOptimizedMethod1(self, void, OSTPAdManager, initGAdSplashInterstitialWithParentController, id, arg1){

}

//注册类,hook方法
CHConstructor{
    
    CHLoadLateClass(OSTPAdManager);
    CHHook1(OSTPAdManager, initGAdSplashInterstitialWithParentController);
    
}
