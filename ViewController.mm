//
//  ViewController.m
//  OpenCVTest
//
//  Created by 陈亮 on 11/28/15.
//  Copyright © 2015 coooliang. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+OpenCV.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"QQ20151128-0"];
    cv::Mat m = cv::Mat(320,300,CV_32F);

    UIImage *result = [image initWithCVMat:m];

    [self.view addSubview:[[UIImageView alloc]initWithImage:result]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
