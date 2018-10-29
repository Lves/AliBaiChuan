//
//  ViewController.m
//  AliBCDemo
//
//  Created by lixingle on 2018/10/29.
//  Copyright © 2018 com.pintec. All rights reserved.
//

#import "ViewController.h"
#import <AlibcTradeSDK/AlibcTradeSDK.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapNext:(id)sender {

    
    //打开商品详情页
    id<AlibcTradePage> page = [AlibcTradePageFactory itemDetailPage: @"9194799114"];
    //淘客信息
    AlibcTradeTaokeParams *taoKeParams=[[AlibcTradeTaokeParams alloc] init];
    taoKeParams.pid=nil; //
    //打开方式
    AlibcTradeShowParams* showParam = [[AlibcTradeShowParams alloc] init];
    showParam.openType = AlibcOpenTypeNative;
    showParam.backUrl=@"tbopen25096076://";
    showParam.isNeedPush=YES;
    
    [[AlibcTradeSDK sharedInstance].tradeService show:self.navigationController
                                                 page:page
                                           showParams:showParam
                                          taoKeParams: nil
                                           trackParam: nil tradeProcessSuccessCallback:^(AlibcTradeResult * _Nullable result) {
                                               NSLog(@"成功");
                                           } tradeProcessFailedCallback:^(NSError * _Nullable error) {
                                               NSLog(@"失败");
                                           }];
    
    
}


@end
