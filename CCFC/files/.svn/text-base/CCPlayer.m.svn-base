//
//  CCPlayer.m
//  CCFC
//
//  Created by xichen on 11-12-16.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCPlayer.h"


@implementation CCPlayer


// 调用系统播放器播放资源界面
+ (MPMediaPickerController *)showIpodPlayResourceView:(id)delegate
                                            mediaType:(MPMediaType)mediaType
                                               prompt:(NSString *)prompt 
                                 isAllowMultiSelected:(BOOL)isAllowMultiSelected 
                                             animated:(BOOL)animated
{
	MPMediaPickerController *playlistView = 
            [[MPMediaPickerController alloc] initWithMediaTypes:mediaType];
	if(!playlistView)
	{
		return nil;
	}
	
	playlistView.delegate = delegate;
	playlistView.prompt = (NSString *)prompt;
	playlistView.allowsPickingMultipleItems = isAllowMultiSelected;
	
	[delegate presentModalViewController:playlistView animated:animated];
	[playlistView release];
	return playlistView;
}

// not known
// 调用系统ipod视频播放借口
+ (MPMoviePlayerViewController *)showMovieView:(id)delegate
									urlStr:(NSString *)urlStr 
									 style:(MPMovieControlStyle)style
								  animated:(BOOL)animated
{
	MPMoviePlayerViewController *moviePlayerController = 
	[[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:urlStr]];
	if(!moviePlayerController)
	{
		return nil;
	}
	

	[delegate presentMoviePlayerViewControllerAnimated:moviePlayerController];
	moviePlayerController.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
	[moviePlayerController.moviePlayer play];
	
	return [moviePlayerController autorelease];
}

@end
