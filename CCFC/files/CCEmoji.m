//
//  CCEmoji.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCEmoji.h"
#import "CCUITextView.h"

@implementation CCEmoji

// returns a textView that contains nearly all the emojis
+ (UITextView *)returnAllEmojiTextView
{
	NSMutableString *s = [[NSMutableString alloc] initWithString:
						@"This is a smiley \ue415 \ue533 face\n"];    

	// ee8081 ~ ee94b7
	unsigned char str[] = {0xee, 0x80, 0x80, 0};
	unsigned char secondByte[] = {0x80, 0x81, 0x84, 0x85, 
		0x88, 0x89, 0x8c, 0x8d, 0x90, 0x91, 0x94};
	int secondByteLen = sizeof(secondByte) / sizeof(secondByte[0]);
	NSLog(@"secondByteLen is %d", secondByteLen);
	for(int j = 0; j < secondByteLen; ++j)	// get nearly all emoji info
	{
		str[1] = secondByte[j];
		if(str[1] == (unsigned char)0x80)
		{
			for(int i = 1; i <= (0xbf - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", (int)str[1], (int)str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		if(str[1] == (unsigned char)0x81)
		{
			for(int i = 0; i <= (0x9a - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", str[1], str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		if(str[1] == (unsigned char)0x84 
		   || str[1] == (unsigned char)0x8c 
		   || str[1] == (unsigned char)0x90)
		{
			for(int i = 1; i <= (0xbf - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", str[1], str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		if(str[1] == (unsigned char)0x85)
		{
			for(int i = 0; i <= (0x9a - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", str[1], str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		if(str[1] == (unsigned char)0x88)
		{
			for(int i = 1; i <= (0xbf - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", str[1], str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		
		if(str[1] == (unsigned char)0x89)
		{
			for(int i = 0; i <= (0x93 - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", str[1], str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		
		if(str[1] == (unsigned char)0x8d)
		{
			for(int i = 0; i <= (0x8d - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", str[1], str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		
		if(str[1] == (unsigned char)0x91)
		{
			for(int i = 0; i <= (0x8c - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", str[1], str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
		
		if(str[1] == (unsigned char)0x94)
		{
			for(int i = 1; i <= (0xb7 - 0x80); ++i)
			{
				str[2] += (unsigned char)i;
				[s appendFormat:@"0xee%x%x:", (int)str[1], (int)str[2]];
				[s appendString:[NSString stringWithUTF8String:(const char *)str]];
				[s appendString:@"\r"];
				str[2] = 0x80;
			}
		}
	}
	
	UITextView *textView = [UITextView createCommonTextView:CGRectMake(0, 60, 320, 260)
												   withText:s];
	[s release];
	return textView;
}

@end
