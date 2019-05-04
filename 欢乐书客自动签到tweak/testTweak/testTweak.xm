// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>

%hook HBBookshelfViewController


- (long long)numberOfSectionsInTableView:(id)arg1
{
    long long r = %orig;
    //获取当前签到状态
    bool showSignState = objc_msgSend( self, @selector(currentSignState));

    if(showSignState == NO)
    {
    //未签到时执行签到方法
        objc_msgSend( self, @selector(clickSignIn) );

    }
    return r;
}


%end

