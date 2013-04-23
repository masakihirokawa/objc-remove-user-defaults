//
//  ViewController.m
//  RemoveNSUserDefaultsSample
//
//  Created by Dolice on 2013/04/23.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //ユーザーデフォルトを取得する
  NSUserDefaults * userDefaults;
  
  userDefaults = [NSUserDefaults standardUserDefaults];
  
  //設定値を保存する
  [userDefaults setInteger:6
                    forKey:@"myValue"];
  
  //設定値を削除する
  [userDefaults removeObjectForKey:@"myValue"];
  
  //ファイルに反映する
  [userDefaults synchronize];
}

@end
