//
//  ViewController.m
//  waterMark
//
//  Created by 李明禄 on 16/1/11.
//  Copyright © 2016年 SocererGroup. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+WaterMark.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *baseImage = [UIImage imageNamed:@"IMG_0821.JPG"];
    
//    UIImage *resultImage = [baseImage imageWaterMarkWithString:@"我是rock" point:CGPointMake(20, 200) attribute:@{NSForegroundColorAttributeName:[UIColor blueColor]} image:[UIImage imageNamed:@"1"] imagePoint:CGPointMake(0, 0) alpha:0.2];
    
    UIImage *resultImage = [baseImage imageWaterMarkWithString:@"我是rock" rect:CGRectMake(0, 100, 200, 100) attribute:@{NSForegroundColorAttributeName:[UIColor blueColor]} image:[UIImage imageNamed:@"1"]  imageRect:CGRectMake(0, 0, self.view.bounds.size.width, 100) alpha:0.4];
    
    UIImageView  *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    
    imageView.image = resultImage;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
