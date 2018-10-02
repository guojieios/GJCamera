//
//  ViewController.m
//  GJCamera
//
//  Created by 郭杰 on 2018/9/22.
//  Copyright © 2018年 郭杰. All rights reserved.
//

#import "ViewController.h"
#import "GJVideoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
}
- (IBAction)buttonClick:(id)sender {
    
    GJVideoViewController *ctrl = [[NSBundle mainBundle] loadNibNamed:@"GJVideoViewController" owner:nil options:nil].lastObject;
    ctrl.GJSeconds = 30;//设置可录制最长时间
    ctrl.takeBlock = ^(id item) {
        if ([item isKindOfClass:[NSURL class]]) {
            NSURL *videoURL = item;
            //视频url
            NSLog(@"视频是 %@",item);
        } else {
            //图片
            NSLog(@"图片是 %@",item);
            
        }
    };
    [self presentViewController:ctrl animated:YES completion:nil];
    
    
    
}
    

@end
