//
//  AudioPlayerTool.m
//  播放音乐
//
//  Created by 上海均衡 on 2016/10/20.
//  Copyright © 2016年 上海均衡. All rights reserved.
//

#import "AudioPlayerTool.h"
#import <AVFoundation/AVFoundation.h>

static NSMutableDictionary *players;



@implementation AudioPlayerTool
+(void)initialize{
    players=[NSMutableDictionary dictionary];
}

+(void)playMusicWithFileName:(NSString *)fileName{
    //创建空的播放器
    AVAudioPlayer *player=nil;
    //从字典中去除播放器
    player= players[fileName];
    //判断播放器是否为空
    if (player == nil) {
        //生成对应的音乐资源
        NSURL *fileURL=[[NSBundle mainBundle] URLForResource:@"bugai.mp3" withExtension:nil];
        //创建对应的播放器
        player=[[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
        //保存到字典中
        [players setObject:player forKey:fileName];
        //准备播放
        [player prepareToPlay];
    }
    //开始播放
    [player play];
}
//暂停音乐
+(void)pauseMusicWithFileName:(NSString *)fileName{
    AVAudioPlayer *pause=players[fileName];
    if (pause) {
        [pause pause];
    }
}
//停止音乐
+(void)stopMusicWithFileName:(NSString *)fileName{
    AVAudioPlayer *stop=players[fileName];
    if (stop) {
        [stop stop];
        [players removeObjectForKey:fileName];
        players=nil;
    }
}
@end
