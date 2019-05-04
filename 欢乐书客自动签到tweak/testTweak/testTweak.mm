#line 1 "/Users/nanfeng/Desktop/逆向工程用/monkeyDev/testTweak/testTweak/testTweak.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>




#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class HBBookshelfViewController; 
static long long (*_logos_orig$_ungrouped$HBBookshelfViewController$numberOfSectionsInTableView$)(_LOGOS_SELF_TYPE_NORMAL HBBookshelfViewController* _LOGOS_SELF_CONST, SEL, id); static long long _logos_method$_ungrouped$HBBookshelfViewController$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL HBBookshelfViewController* _LOGOS_SELF_CONST, SEL, id); 

#line 11 "/Users/nanfeng/Desktop/逆向工程用/monkeyDev/testTweak/testTweak/testTweak.xm"





    





















static long long _logos_method$_ungrouped$HBBookshelfViewController$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL HBBookshelfViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    long long r = _logos_orig$_ungrouped$HBBookshelfViewController$numberOfSectionsInTableView$(self, _cmd, arg1);
    
    bool showSignState = objc_msgSend( self, @selector(currentSignState));

    if(showSignState == NO)
    {

        objc_msgSend( self, @selector(clickSignIn) );

    }
    return r;
}







































































static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$HBBookshelfViewController = objc_getClass("HBBookshelfViewController"); MSHookMessageEx(_logos_class$_ungrouped$HBBookshelfViewController, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$HBBookshelfViewController$numberOfSectionsInTableView$, (IMP*)&_logos_orig$_ungrouped$HBBookshelfViewController$numberOfSectionsInTableView$);} }
#line 122 "/Users/nanfeng/Desktop/逆向工程用/monkeyDev/testTweak/testTweak/testTweak.xm"
