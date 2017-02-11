//
//  ViewController.m
//  播放音乐
//
//  Created by 上海均衡 on 2016/10/20.
//  Copyright © 2016年 上海均衡. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "AudioPlayerTool.h"
@interface ViewController ()
@property(nonatomic,strong) AVAudioPlayer *player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}
#pragma mark 懒加载
-(AVAudioPlayer *)player{
    if (_player==nil) {
        //创建音乐文件
        NSURL *url=[[NSBundle mainBundle] URLForResource:@"bugai.mp3" withExtension:nil];

        _player=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
        //准备播放
        [_player prepareToPlay];
    }
    return _player;
}
- (IBAction)start:(id)sender {
    [AudioPlayerTool playMusicWithFileName:@"bugai.mp3"];
//    [self.player play];

}


- (IBAction)pause:(id)sender {
    [AudioPlayerTool pauseMusicWithFileName:@"bugai.mp3"];
//    [self.player pause];
    
}
- (IBAction)stop:(id)sender {
    [AudioPlayerTool stopMusicWithFileName:@"bugai.mp3"];
//    [self.player stop];
//    self.player=nil;
    
}


@end
