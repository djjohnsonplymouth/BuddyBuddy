#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wtypedef-redefinition"
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
#define DEBUG 1
#include <stdarg.h>
#include <objc/objc.h>
#include <objc/runtime.h>
#include <objc/message.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <WatchKit/WatchKit.h>
#import <HealthKit/HealthKit.h>

@class __MonoMac_NSActionDispatcher;
@class __MonoMac_NSAsyncActionDispatcher;
@class ExtensionDelegate;
@class InterfaceController;
@class NotificationController;
@class __NSObject_Disposer;

@interface ExtensionDelegate : NSObject<WKExtensionDelegate> {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) applicationDidFinishLaunching;
	-(void) applicationDidBecomeActive;
	-(void) applicationWillResignActive;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@interface InterfaceController : WKInterfaceController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) awakeWithContext:(NSObject *)p0;
	-(void) willActivate;
	-(void) didDeactivate;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@interface NotificationController : WKUserNotificationInterfaceController {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) willActivate;
	-(void) didDeactivate;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end


