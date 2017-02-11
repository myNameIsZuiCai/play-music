//
//  AudioPlayerTool.h
//  播放音乐
//
//  Created by 上海均衡 on 2016/10/20.
//  Copyright © 2016年 上海均衡. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AudioPlayerTool : NSObject
//播放音乐
+(void)playMusicWithFileName:(NSString *)fileName;
//暂停音乐
+(void)pauseMusicWithFileName:(NSString *)fileName;
//停止音乐
+(void)stopMusicWithFileName:(NSString *)fileName;

//播放音效
+(void)playSoundWithSoundName:(NSString *)soundName;
@end
