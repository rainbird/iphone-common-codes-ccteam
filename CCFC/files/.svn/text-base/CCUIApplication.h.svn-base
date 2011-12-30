//
//  CCUIApplication.h
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIApplication(cc)

- (void)showStatusBar;
- (void)hideStatusBar;
- (void)showNetworkActivityInStatusBar;
- (void)hideNetworkActivityInStatusBar;
- (BOOL)getStatusBarNetworkActivityStatus;

// 退出应用程序
- (void)terminate:(int)exitCode;

// open another application
// the anotherAppScheme argument is like "calculator:" which is defined in info.plist file 
// a demo :
/*
<array>
 <dict>
	<key>CFBundleURLSchemes</key>
		<array>
			<string>ccfctest</string>
		</array>
	<key>CFBundleURLName</key>
	<string></string>
 </dict>
</array>
*/

+ (BOOL)openAnotherApp:(NSString *)anotherAppScheme;

// open a url
+ (BOOL)openUrl:(NSString *)url;

#if CC_ENABLE_PRIVATE_API
- (UIView *)statusBar;		// the statusBar view
- (UIWindow *)statusBarWindow;	// the window of the statusBar
- (void)suspend;			// suspend the application
- (void)terminateWithSuccess;	// terminate the application
- (NSString *)userHomeDirectory;	// the directory of the user's home
- (NSString *)userLibraryDirectory;	// user's library directory
- (NSString *)userCachesDirectory;	// user's caches directory
- (void)setApplicationBadgeString:(NSString *)str;	// set the eage string of the application icon
- (BOOL)isLocked;		// whether the application is locked
- (NSString *)displayIdentifier;	// the identifier of the app, eg, com.ccteam.ccfc
#endif


@end
