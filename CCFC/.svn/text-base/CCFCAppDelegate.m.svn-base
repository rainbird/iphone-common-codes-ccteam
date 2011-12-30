//
//  CCFCAppDelegate.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <dlfcn.h>

#import "CCFCAppDelegate.h"
#import "CCUIAlertTextView.h"
#import "CCAddressBook.h"
#import "CCNSString.h"
#import "CCEncoding.h"
#import "CCNSData.h"
#import "CCLog.h"
#import "CCInfoPlistFileReader.h"
#import "CCPlayer.h"
#import "CCAudio.h"
#import "CCXml.h"
#import "CCFileUtil.h"
#import "CCHttp.h"
#import "CCAudio.h"
#import "CCXmlParser.h"
#import "CCUITextView.h"
#import "CCDylib.h"
#import "CCFileName.h"
#import "CCCommon.h"
#import "CCKeyboard.h"
#import "CCFile.h"
#import "CCPhone.h"
#import "CCUIDevice.h"
#import "CCPhoto.h"
#import "CCUIHardware.h"
#import "CCEmoji.h"
#import "CCNSRegularExpression.h"
#import "CCRandom.h"
#import "CCUIImageView.h"
#import "CCUIImage.h"
#import "CCNSArray.h"
#import "CCCALayer.h"
#import "CCUIWindow.h"
#import "CCNSTimeZone.h"
#pragma mark headerFileEnd
#import "CCNSEnumerator.h"
#import "CCUIFont.h"
#import "CCNSPredicate.h"
#import "CCUIAlertActivityView.h"
#import "CCUITextField.h"
#import "CCUISlider.h"
#import "CCCamera.h"
#import "CCNSDate.h"

void uncaughtExceptionHandler(NSException *exception) 
{
	LOG_HERE;
	LOG_ARR([exception callStackSymbols]);
}

@implementation CCFCAppDelegate


@synthesize window=_window;

@synthesize navigationController=_navigationController;

#pragma mark CCAudio delegate
- (void)onGetCurrentTime:(NSTimer *)timer
{
	static float volume = 0.1f;
	NSLog(@"current time is %d", [_player getCurrentPlayTime]);
	NSLog(@"volume is %f", [_player getVolume]);
	[_player setVolume:volume];
	volume += 0.1f;
	
	if(volume >= 1.0f)
		volume = 0.1f;
}

- (void)onRecorderEnded
{
	NSLog(@"record data total size:%d", [_recorder getRecordPacket]);
	[_recorder stop];
}

#pragma mark CCHttp delegate
- (void)connection:(NSURLConnection *)connection 
didReceiveResponse:(NSURLResponse *)response
{
	if(connection = _conn)
	{
		NSLog(@"_conn didReceiveResponse");
	}
	if(connection = _conn1)
	{
		NSLog(@"_conn1 didReceiveResponse");
	}
}

- (void)connection:(NSURLConnection *)connection 
	didReceiveData:(NSData *)data
{
	if(connection = _conn)
	{
		NSLog(@"_conn didReceiveData:%@", [data UTF8Str]);
	}
	
	if(connection = _conn1)
	{
		NSLog(@"_conn1 didReceiveData:%@", [data UTF8Str]);
	}
}

- (void)connection:(NSURLConnection *)connection 
   didSendBodyData:(NSInteger)bytesWritten 
 totalBytesWritten:(NSInteger)totalBytesWritten 
totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite NS_AVAILABLE(10_6, 3_0)
{
	if(connection = _conn)
	{
		NSLog(@"_conn didSendBodyData");
	}
	if(connection = _conn1)
	{
		NSLog(@"_conn1 didSendBodyData");
	}
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	if(connection = _conn)
	{
		NSLog(@"_conn connectionDidFinishLoading");
	}
	if(connection = _conn1)
	{
		NSLog(@"_conn1 connectionDidFinishLoading");
	}
}

- (void)connection:(NSURLConnection *)connection 
  didFailWithError:(NSError *)error
{
	if(connection = _conn)
	{
		NSLog(@"_conn didFailWithError:%@", error);
	}
	if(connection = _conn1)
	{
		NSLog(@"_conn1 didFailWithError:%@", error);
	}
}

#pragma mark enumerator
- (void)onEnumForSelector:(id)obj
{
	LOG_ID(obj);
}

- (void)onEnumForSelector:(id)obj userInfo:(id)userInfo
{
	LOG_ID(obj);
	LOG_ID(userInfo);
}

#pragma mark UISlider callback
- (void)onSliderValueChanged:(id)sender
{
	UISlider *slider = (UISlider *)sender;
	LOG_DOUBLE(slider.value);
}

#pragma mark btnClickDelegate
- (void)onBtnClick:(id)sender
{
	// ok
	/*
	[CCPhoto saveViewToPhotosAlbum:sender];
	 */
	
	// CCKeyboard
	// get the keyboard view	// ok
	/*
	NSMutableArray *arr = [NSMutableArray array];
	[[UIWindow getTextEffectsWindow] 
						getSubViewIsMemberOf:@"UIPeripheralHostView"
						array:arr];
	LOG_ARR(arr);
	 */
	
	// CCKeyboard	
	// getKeyboardWindow	// ok
	/*
	LOG_ID([CCKeyboard getKeyboardWindow]);
	 */
	
	#pragma mark CCUIDevice
	// reboot	// not ok
	//[UIDevice reboot];
	
	// test getIPAddress	// ok
	//	LOG_STR([UIDevice getIPAddress]);
	
	
#pragma mark CCUIAlertActivityView
	// test UIAlertActivityView
	// ok
	/*
	CCUIAlertActivityView *alertActivityView = [[CCUIAlertActivityView alloc]
											  initWithTitle:@"waiting..."];
	alertActivityView.disappearTime = 4.0f;
	[alertActivityView show];
	*/
	
#pragma mark CCUITextField
	// test CCUITextField
	// test addClearButton  // ok
	//UITextField *textField = [UITextField createCommonTextField:
//							  CGRectMake(20, 160, 200, 40)];
//	[textField addClearButton];
//	[self.navigationController.view addSubview:textField];
	
#pragma mark CCKeyboard
	// test getKeyboardView getKeyboardViewName	// ok
//	LOG_ID([CCKeyboard getKeyboardView]);
//	LOG_ID([CCKeyboard getKeyboardViewName]);
	
#pragma mark CCUISlider
	// test UISlider
	// createCommonSlider // ok
//	UISlider *slider = [UISlider createCommonSlider:CGRectMake(40, 60, 100, 20)
//											 target:self
//												sel:@selector(onSliderValueChanged:)];
//	[self.navigationController.view addSubview:slider];
	
#pragma mark CCSMS
	// test CTSIMSupportCopyMobileSubscriberIdentity
//	char *imsi = CTSIMSupportCopyMobileSubscriberIdentity();	// crashed not ok, iphone4 ios4.3.3
//	LOG_CSTR(imsi);
//	CTSIMSupportCopyMobileSubscriberIdentity();	// crashed not ok
	
	// test CTSIMSupportGetSIMStatus
//	LOG_STR(CTSIMSupportGetSIMStatus());	// ok
//	LOG_STR(kCTSIMSupportSIMStatusNotInserted);	// compile error not ok
	
//	LOG_BOOL((CTSIMSupportGetSIMStatus() == kCTSIMSupportSIMStatusNotInserted));// compile error not ok
//	LOG_BOOL(CTSIMSupportGetSIMStatus() == kCTSIMSupportSIMStatusReady);// compile error not ok

#pragma mark cause an exception
	// int *p = 0;
	// int i = 0;
	// NSLog(@"%d", 7 / i);	// it's strange that it can't cause an exception???? not known
	// NSLog(@"%p", *p);		// it causes exception, but the exception process func won't enter.
	
	// [UIView sendNotKnownMsg1909343234_];	// ok, NSSetUncaughtExceptionHandler can only be ok if the objc exception happens, not c or c++ exception.
	
#pragma mark CCCamera
	
#pragma mark open the setting view
	// not ok for ios4.3.3, maybe ok for ios5
	// [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=General&path=Bluetooth"]];

#pragma mark CCNSDate
	// printSystemDateByChineseFormat
	// ok
//	[NSDate printSystemDateByChineseFormat];

#pragma mark CABasicAnimation
	// test CABasicAnimation	// not ok
//	CABasicAnimation *theAnimation = 
//		[CABasicAnimation animationWithKeyPath:@"transform.cctest"]; 
//	theAnimation.duration = 1; 
//	theAnimation.repeatCount = 2; 
//	theAnimation.autoreverses = YES; 
//	theAnimation.fromValue = [NSNumber numberWithFloat:0]; 
//	theAnimation.toValue = [NSNumber numberWithFloat:-60]; 
//	[self.navigationController.view.layer addAnimation:theAnimation forKey:@"animateLayer"];

#pragma mark CFAbsoluteTimeGetCurrent
	// test	// ok
//	CFAbsoluteTime myCurrentTime = CFAbsoluteTimeGetCurrent();
//	LOG_DOUBLE(myCurrentTime);
	

}

#pragma mark application delegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	
#pragma mark add new controls
	// add a button
	CGRect rect = CGRectMake(20, 20, 60, 30);
	btn = [UIView createButton:&rect
							   withTitle:@"OK"];
	[btn addTarget:self 
			action:@selector(onBtnClick:) 
  forControlEvents:UIControlEventTouchUpInside];
	[self.navigationController.view addSubview:btn];
	
	// add a textView
	UITextView *textView = [UITextView createCommonTextView:CGRectMake(0, 60, 200, 40)
												   withText:@""];
	textView.editable = TRUE;
	[self.navigationController.view addSubview:textView];
	
#pragma mark add uncaughtExceptionHandler
	// NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
	
#pragma mark CCUIAlertTextView
    // test CCUIAlertTextView //ok
    /*
    CCUIAlertTextView *alertView = [[CCUIAlertTextView alloc] initWithTitle:@"hello"
                                                            delegate:self
                                                          cancelButtonTitle:@"Cancel"
                                                             okButtonTitles:@"OK"];
    [alertView show];
    */
    
#pragma mark CCAddressBook
    // test CCAddressBook	// ok
    /*
    CCAddressBook *ab = [CCAddressBook new];
    for(int i = 0; i < [ab getABRecordCount]; ++i)
    {
        NSLog(@"getCompositeNameByIndex %d is %@", i, [ab getCompositeNameByIndex:i]);
        NSLog(@"getPhoneNumberArrByIndex %d is %@", i, [ab getPhoneNumberArrByIndex:i]);
        NSLog(@"getFullNameByIndex %d is %@", i, [ab getFullNameByIndex:i]);
    }
    [ab release];
     */
    
#pragma mark CCNSString
    // test CCNSString	// ok
	/*
    NSString *str = @" xichenxuchenx 陈曦\t\n";
    NSString *trimmedStr = [str returnTrimmed];
    NSLog(@"trimmedStr is \"%@\"", trimmedStr);
    int index = [trimmedStr firstIndexOfChar:'x'];
    NSLog(@"index is %d", index);
    index = [trimmedStr lastIndexOfChar:'x'];
    NSLog(@"index is %d", index);
    index = [trimmedStr firstIndexOfChar:'x' withAppearCount:3];
    NSLog(@"index is %d", index);
    [str print];	
	*/
	
	// calculateTextCharCount	// ok
	/*
	NSString *str = @"陈a '曦";
	LOG_INT([str calculateTextCharCount]);
	*/
	
	// test
	// not known
	//NSLog(@"%.*s", "hello");
	
	
	
#pragma mark CCEncoding
	// CCEncoding	// ok
	/*
	[CCEncoding logAllEncodings];
	char temp[] = {0xFF, 0xFE, 0x00, 0x97, 0x81, 0x89, 0xBA, 0x4E, 0x6A, 0x96};
	NSString *needPeople = @"陈曦陈曦陈";
	const unsigned char *str = [needPeople UTF8String];
	for(int i = 0; i < strlen(str); ++i)
	{
		NSLog(@"%x ", str[i]);
	}
	
	//NSString *unicode = [CCEncoding UnicodeCStrToUnicode:temp withLen:10];
	//NSLog(@"unicode is %@", unicode);
	
	NSLog(@"");
	NSData *data = [needPeople dataUsingEncoding:NSUnicodeStringEncoding];
	const unsigned char *bytes = (const unsigned char *)[data bytes];
	[data print];
	
	NSLog(@"");
	const unsigned char *gb = [CCEncoding UnicodeToGB18030:needPeople];
	for(int i = 0; i < strlen(gb); ++i)
	{
		NSLog(@"%x ", gb[i]);
	}
	*/
	
	// what does it mean? // ok
	
//	NSString *oriString = @"\u67aa\u738b";
//	NSString *finalString = [oriString stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//	LOG_STR(finalString);
//	LOG_STR(oriString);
	
	
	
#pragma mark CCNSData
	// test CCNSData		// ok
	/*
	LOG_STARS
	NSString *xichen = @"陈曦陈曦陈";
	NSData *dataXichen = [xichen dataUsingEncoding:NSUnicodeStringEncoding];
	[dataXichen print];
	LOG_STARS
	[dataXichen printWithUint:NSDATA_UNIT_ONE];
	LOG_STARS
	[dataXichen printWithUint:NSDATA_UNIT_TWO];
	LOG_STARS
	[dataXichen printWithUint:NSDATA_UNIT_FOUR];
	LOG_STARS
	*/
	
#pragma mark CCInfoPlistFileReader
	// test		CCInfoPlistFileReader	// ok
	/*
	CCInfoPlistFileReader *infoReader = [CCInfoPlistFileReader sharedInstance];
	NSLog(@"version is %@", [infoReader getVersion]);
	[infoReader release];
	*/
	
	// CCInfoPlistFileReader printAllKeysValues	// ok
//	[CCInfoPlistFileReader printAllKeysValues];
	
	
#pragma mark showMovieView
	// test	showMovieView	// not ok
//	[CCPlayer showMovieView:@"www.baidu.com" style:MPMovieControlStyleFullscreen animated:YES];
	
#pragma mark CCAudio
	// test	CCAudio	// ok
	// [CCAudio playSystemKeyboardClick];
	
#pragma mark CCXml
	// test CCXml	// ok
	/*
	NSString *file = [CCFileUtil getFileFullPathInBundlePath:@"Setting.xml"];
	CCXml *xml = [[CCXml alloc] initWithFileFullPath:file];
	CCXmlNode *root = [xml getRootNode];
	NSLog(@"root name is %s", [root name]);
	NSLog(@"root attr1 is %s", [root getProp:"writter"]);
	NSLog(@"root attr2 is %s", [root getProp:"date"]);
	
	NSArray *arr = [xml getSubElementNodeArr:root];
	NSLog(@"count is %d", [arr count]);
	CCXmlNode *arr_1 = [arr objectAtIndex:1];
	NSLog(@"writter is %s", [arr_1 getProp:"writter"]);
	
	NSLog(@"firstLevelNodeArr count is %d", [[xml firstLevelNodeArr] count]);
	CCXmlNode *node1 = [[xml firstLevelNodeArr] objectAtIndex:0];
	NSLog(@"node1 name is %s", [node1 name]);
	CCXmlNode *node1Child = [node1 child];		// text
	//NSLog(@"node1Child name is %s", [node1Child name]);
	
	CCXmlNode *node1ChildNext = [node1Child next];
	NSLog(@"node1ChildNext name is %s", [node1ChildNext name]);
	//NSLog(@"node1ChildNext text is %s", [node1ChildNext text]);
	
	CCXmlNode *node1ChildNextNext = [[node1ChildNext next] next];
	NSLog(@"node1ChildNextNext name is %s, text is %s",
		  [node1ChildNextNext name], [node1ChildNextNext text]);
	
	[xml release];
	 */
	
#pragma mark CCHttp Synchronous
	// test	// CCHttp	Synchronous response	// ok
	/*
	NSHTTPURLResponse *response;
	NSData *data = [CCHttp sendSynchronousGETRequest:@"http://www.g.cn" withResponse:&response];
	NSLog(@"data length is %d", [data length]);
	NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	NSLog(@"str is %@, length is %d", str, [str length]);
	[str release];
	NSLog(@"url is %@, expectedContentLength is %ld, textEncodingName is %@, MIME is %@", 
		  [response URL], 
		  [response expectedContentLength], 
		  [response textEncodingName],
		  [response MIMEType]);
	
	NSLog(@"headerFields are %@", [response allHeaderFields]);
	NSLog(@"localizedStringForStatusCode:200 is %@", [NSHTTPURLResponse localizedStringForStatusCode:200]);
	
	char *str1 = "xichenhello";
	NSData *body = [NSData dataWithBytes:(const void *)str1 length:8];
	NSData *data1 = [CCHttp sendSynchronousPOSTRequest:@"www.g.cn" 
											  withBody:body 
										  withResponse:nil];
	NSLog(@"%@", [data1 UTF8Str]);
	*/
	
#pragma mark CCHttp Asynchronous
	// test	// CCHttp	Asynchronous response	// ok
	/*
	_conn = [CCHttp sendAsynchonousGETRequest:@"http://www.g.cn"
												 withDelegate:self];
	char *str2 = "xichenhello";
	NSData *body2 = [NSData dataWithBytes:(const void *)str2 length:8];
	_conn1 = [CCHttp sendAsynchonousPOSTRequest:@"http://www.g.cn"
									   withBody:body2
								   withDelegate:self];
	*/
	
#pragma mark CCFileUtil
	// test CCFileUtil	// ok
	/*
	NSArray *arr = [CCFileUtil getAllFilesAtFolder:@"/ccfc"];
	NSLog(@"arr is %@", arr);
	*/

	/*		// ok
	 BOOL ret = [CCFileUtil isAbsolutePath:@"/ccfc/xichen"];
	 NSLog(@"ret is %s", TO_BOOL_STR(ret));
	 ret = [CCFileUtil isAbsolutePath:@"xichen"];
	 NSLog(@"ret is %s", TO_BOOL_STR(ret));
	 */
	
	// getCurrentDirectory	// ok
	/*
	LOG_STR([CCFileUtil getCurrentDirectory]);
	LOG_STR([CCFileUtil createNewFileInFolder:[CCFileUtil getDocFolder]]);
	*/
	
	// delete a folder	// ok
	//NSString *folder = [CCFileUtil getLibFolder];
//	BOOL ret;
//	NSFileManager *fileMgr = [NSFileManager defaultManager];
//	ret = [fileMgr removeItemAtPath:folder error:nil];
//	LOG_BOOL(ret);
	
#pragma mark CCUIAlertView
    //    CCUIAlertTextView *alert = [[CCUIAlertTextView alloc] initWithTitle:@"hello" delegate:self cancelButtonTitle:@"cancel" okButtonTitles:@"ok"];
    //    [alert show];


#pragma mark CCAudio
	// test CCAudio		
	// CCLocalAudioPlayer	// ok
	/*
	// NSString *path = [CCFileUtil getFileFullPathInBundlePath:@"凤凰传奇-最炫民族风.mp3"];
	

	NSString *path = [CCFileUtil getFileFullPathInDocument:@"recordTest"];
	_player = [[CCLocalAudioPlayer alloc] initWithPath:
								  path];
	[_player play];
	NSLog(@"duration is %d", [_player getDuration]);
	[NSTimer scheduledTimerWithTimeInterval:5.0f
									 target:self 
								   selector:@selector(onGetCurrentTime:) 
								   userInfo:_player
									repeats:YES];
	 */
	
	// CCRecorder			// ok , it doesn't support amr record
	/*
	_recorder = [[CCRecorder alloc] initWithPath:
							 [CCFileUtil getFileFullPathInDocument:@"recordTest"]];
	[_recorder setRecordToPCM];	
	OSStatus status = [_recorder start];
	NSLog(@"status is %d", status);
	[NSTimer scheduledTimerWithTimeInterval:20.0f
									 target:self
								   selector:@selector(onRecorderEnded)
								   userInfo:nil
									repeats:NO];
	 */
	
#pragma mark CCUIView
	// test CCUIView	
	// getSubViewIsKindOf	// ok
	/*
	NSMutableArray * arr = [NSMutableArray array];
	[self.navigationController.view getSubViewIsKindOf:@"UINavigationBar" array:arr];
	NSLog(@"arr is %@", arr);
	 */
	// getTextRows	// not ok
	/*
	NSString *text = @"12329349fjofklsdjfoss;gjliguos;gkodsjdgd;gkdjgkjdgod"\
	"sfjsofjsogglsdgjorrt8470kigu98guw3ri-is0g0tu98ut0sig09dsu9wr0wueu9kgidi03"\
	"helloxichen陈曦";
	UILabel *tempLabelView = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 100, 100)];
	tempLabelView.text = text;											   
	[self.navigationController.view addSubview:tempLabelView];
	NSLog(@"row count is %d", [tempLabelView.superview getTextRows]);
    
//    [self.navigationController.view commonFlip];
	*/
	
	
	
#pragma mark CCUITextView
	// test CCUITextView	
	/*	// not ok
	NSString *text = @"12329349fjofklsdjfoss;gjliguos;gkodsjdgd;gkdjgkjdgod"\
	"sfjsofjsogglsdgjorrt8470kigu98guw3ri-is0g0tu98ut0sig09dsu9wr0wueu9kgidi03"\
	"helloxichen陈曦";
	UITextView *textView = [UITextView createCommonTextView:
					CGRectMake(20, 40, 100, 100)
											withText:text];
	[self.navigationController.view addSubview:textView];
	*/

#pragma mark CCDylib
	// test CCDylib	// ok
	/*
	CCDylib *dylib = [[CCDylib alloc] initWithSystemDylib:@"CoreTelephony"];
	if(dylib != nil)
	{
		intVoidFunc func = [dylib getIntVoidFunc:@"CTGetCurrentCallCount"];
		if(func != NULL)
		{
			int status = func();
			NSLog(@"status is %d", status);
		}
	}
	[dylib close];
	[dylib release];
	 */
	
#pragma mark CCFileName
	// test CCFileName
	/*
	CCFileName *fileName = [[CCFileName alloc] initWithFileName:@"xichen.mp3"];
	NSLog(@"getExtendName is %@", [fileName getExtendName]);
	NSLog(@"getMainName is %@", [fileName getMainName]);
	[fileName release];
	 */
	
#pragma mark CCKeyboard
	// test CCKeyboard	// not known
	/*
	NSString *priLang = [CCKeyboard primaryLanguage];
	LOG("%@", priLang);
	UITextInputMode *inputMode = [CCKeyboard currentInputMode];
	LOG("currentInputMode is %@", inputMode);
	 */
	
	// test CCKeyboard	// ok
	/*
	NSString *str = [CCKeyboard getCurrentInputMode];	// returns null, not known
	LOG_STR(str);
	NSString *temp1 = [CCKeyboard getLocalizedInputModeName:@"iflyinput"];
	LOG_STR(temp1);
	NSBundle *bundle = [CCKeyboard getBundleForInputMode:@"iflyinput"];
	LOG_ID(bundle);
	NSArray *arr = [CCKeyboard getSupportedInputModes];
	LOG_ID(arr);
	Class cls = [CCKeyboard getInputManagerClassForInputMode:@"iflyinput"];
	LOG_ID(NSStringFromClass(cls));
	BOOL ret = [CCKeyboard isLayoutDefaultTypeForInputModeIsASCIICapable:@"iflyinput"];
	LOG_BOOL(ret);
	BOOL ret1 = [CCKeyboard isInputModeUsesKBStar:@"iflyinput"];
	LOG_BOOL(ret1);
	*/
	// test getKeyboardWindow	// ok
	/*
	LOG_ID([CCKeyboard getKeyboardWindow]);
	*/
	
	
#pragma mark CCFile
	// test		CCFile	
	// ok
	/*
	NSString *path = [CCFileUtil getFileFullPathInBundlePath:@"testTxt.txt"];
	CCFile *file = [[CCFile alloc] initWithFilePath:path
									withOpenOptions:@"r+"];
	if(file != nil)
	{
		[file moveToPos:4];
		long size = [file getFileSize];
		LOG_LONG(size);
		
		LOG_INT([file currPos]);
		char buf[20]= {0};
		size_t len = [file read:buf withSize:5];
		LOG_INT(len);
		LOG_CSTR(buf);
		LOG_INT([file currPos]);
		[file moveToBegin];
		LOG_INT([file currPos]);
		
		len = [file write:"xu" withSize:2];
		LOG_INT(len);
		[file moveToBegin];
		len = [file read:buf withSize:2];
		LOG_CSTR(buf);
		
		[file close];
	}
	[file release];
	*/
	// test readFileToLines
	/*	// ok
	LOG_ARR([CCFile readFileToLines:[CCFileUtil getFileFullPathInBundlePath:@"testTxt.txt"]]);
	*/
	
#pragma mark CCPhone
	// test getPhoneNumber	// ok
	/*
	LOG_ID([CCPhone getPhoneNumberDict]);
	LOG_STR([CCPhone getPhoneNumber]);
	LOG_STR([CCPhone getPhoneNumberByUserDefaults]);
	*/
	
	// test getCarrierCode	// ok
	LOG_STR([CCPhone getCarrierCode]);
	LOG_STR([CCPhone getSIMCarrierName:[CCPhone getCarrierCode]]);
	
#pragma mark CCUIDevice
	// test CCUIDevice	
	// ok
	/*
	LOG_STR([UIDevice buildVersion]);
	*/
	
#pragma mark CCPhoto
	// test CCPhoto	
	// ok
	/*
	[CCPhoto saveViewToPhotosAlbum:self.navigationController.view];
	*/
	
#pragma mark CCUIHardware
	// test	UIHardware	// ok
	/*
	float f = [UIHardware statusBarHeight];
	LOG_DOUBLE(f);
	*/
	
#pragma mark CCEmoji
	// test returnAllEmojiTextView	// ok
	/*
	[self.navigationController.view addSubview:[CCEmoji returnAllEmojiTextView]];
	*/
	
#pragma mark CCNSRegularExpression
	// test NSRegularExpression	// ok
	/*
	NSArray *arr = [NSRegularExpression getCommonResult:@"xichen|xuchen|xq"
											withPattern:@"x[iu]"];
	LOG_ARR(arr);
	*/
	
#pragma mark CCRandom
	// test CCRandom	// ok
	/*
	for(int i = 0; i < 1000; ++i)
		LOG_LONG([CCRandom generateRandomNum]);
	for(int i = 0; i < 100; ++i)
		LOG_STR([CCRandom generateRandomStringByLen:4]);
	 */
	
#pragma mark CCUIImageView
	// test CCUIImageView	
	
//	UIImageView *imgView = CREATE_UIIMAGEVIEW(@"history@2x.png");
//    imgView.frame = CGRectMake(160, 0, 150, 150);
//	[imgView setRotatePoint:CGPointMake(0, 0)];	// 
//	[imgView rotate:M_PI / 2];		// ok
//	[self.navigationController.view addSubview:imgView];
	
	
#pragma mark CCUIImage
	// test CCUIImage	
	// ok
	/*
	UIImage *img = [UIImage getFullScreenImg];
	[img saveImgToPhotosAlbum];
	*/
	
#pragma mark CCNSArray
	// test CCNSArray
	// ok
	/*
	NSMutableArray *arr = [NSMutableArray array];
	[arr addNull];
	[arr addObject:@"xichen"];
	[arr addNull];
	[arr addObject:@"xuchen"];
	LOG_ARR(arr);
	 */
	
#pragma mark CCNSTimeZone
	// test CCNSTimeZone
	// not ok
//	NSTimeZone *timeZone = [[NSTimeZone alloc] init];
//	[NSTimeZone setTimeZone:@"GMT"];
//	NSLog(@"%@", [timeZone name]);
//	[timeZone release];
	
	// logKnownTimeZones	// ok
	//[NSTimeZone logKnownTimeZones];
	
#pragma mark UIWebView
	// test pageEnabled
	
	
#pragma mark CCUIWindow
    // ok
   
//    [UIWindow addImgToStatusBar:[UIImage imageNamed:@"Argentina.gif"] withRect:CGRectMake(200, 0, 20, 20)];
//    [UIWindow addImgToWindow:[UIImage imageNamed:@"Argentina.gif"] withRect:CGRectMake(200, 0, 20, 20)];
    
    // ok
//    UIView *view = [[UIApplication sharedApplication] statusBar];
//    UIImageView *imgView = CREATE_UIIMAGEVIEW(@"Argentina.gif");
//    imgView.frame = CGRectMake(200, 0, 20, 20);
//    [view addSubview:imgView];
//    LOG_ID([[UIApplication sharedApplication] statusBarWindow]);
    
#pragma mark CCNSEnumerator
	// ok
	/*
	NSArray *arr = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
	NSEnumerator *obj = [arr objectEnumerator];
	[obj enumForSelector:self selector:@selector(onEnumForSelector:)];
	
	obj = [arr objectEnumerator];
	[obj enumForSelector:self 
				selector:@selector(onEnumForSelector:userInfo:) 
				userInfo:[NSString stringWithFormat:@"/"]];
	*/
	
#pragma mark CCUIFont
	// test CCUIFont
	// ok
	//[UIFont logAllFonts];
	
#pragma mark CCNSPredicate
	// test CCNSPredicate
	// not ok
//	NSString *str = @"陈曦hello";
//	NSString *str1 = @"陈曦";
//	LOG_BOOL([NSPredicate isChineseChar:str]);
//	LOG_BOOL([NSPredicate isChineseChar:str1]);
	
#pragma mark TestEnd
	
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_navigationController release];
	
	[_player stop];
	[_player release];
	[_recorder stop];
	[_recorder release];
	
    [super dealloc];
}

@end
