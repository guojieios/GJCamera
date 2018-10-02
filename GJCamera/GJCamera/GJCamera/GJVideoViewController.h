//
//  GJVideoViewController.h
//  GJCamera
//
//  Created by 郭杰 on 2018/9/22.
//  Copyright © 2018年 郭杰. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TakeOperationSureBlock)(id item);

@interface GJVideoViewController : UIViewController


    @property (copy, nonatomic) TakeOperationSureBlock takeBlock;

    @property (assign, nonatomic) NSInteger GJSeconds;

@end
