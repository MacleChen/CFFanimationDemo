//
//  ViewController.m
//  animationTest1
//
//  Created by jointsky on 2016/11/11.
//  Copyright © 2016年 陈帆. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *test1Btn;

@property (weak, nonatomic) IBOutlet UIButton *test2Btn;

@property (weak, nonatomic) IBOutlet UIButton *test3Btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 设置image动画
    
    
    [self beginToAnimationSomething];
    [NSTimer scheduledTimerWithTimeInterval:2 repeats:YES block:^(NSTimer * _Nonnull timer) {
        // test3 同时创建圆角和阴影, 沿着y轴旋转
        self.test3Btn.layer.cornerRadius = self.test3Btn.bounds.size.height/2;
        self.test3Btn.layer.shadowOffset = CGSizeMake(0, 0);
        self.test3Btn.layer.shadowColor = [UIColor blackColor].CGColor;
        self.test3Btn.layer.shadowRadius = 6;
        self.test3Btn.layer.shadowOpacity = 0.8;
        self.test3Btn.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.test3Btn.bounds cornerRadius:self.test3Btn.bounds.size.height/2].CGPath;
        CABasicAnimation *bacicAnimate = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
        bacicAnimate.toValue = [NSNumber numberWithFloat:M_PI];
        bacicAnimate.duration = 0.3;
        bacicAnimate.cumulative = YES;
        //bacicAnimate.repeatCount = HUGE_VALF;       // 无限循环
        [self.test3Btn.layer addAnimation:bacicAnimate forKey:@"transformY"];
        self.test3Btn.selected = !self.test3Btn.selected;
        [self.test3Btn setTitle:@"日" forState:UIControlStateNormal];
        [self.test3Btn setTitle:@"月" forState:UIControlStateSelected];
    }];
}

- (void)beginToAnimationSomething {
    // 设置拍照按钮动画
    //    CABasicAnimation *tranformAnimate = [CABasicAnimation animationWithKeyPath:@"transform.rotation.x"];
    //    tranformAnimate.fromValue = @(M_PI_2);
    //    tranformAnimate.toValue = @(M_PI);
    //    tranformAnimate.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //    tranformAnimate.autoreverses = NO;
    //    tranformAnimate.repeatCount = HUGE_VALF;
    //    tranformAnimate.beginTime = CACurrentMediaTime();
    //    tranformAnimate.removedOnCompletion = NO;
    //    tranformAnimate.fillMode = kCAFillModeForwards;
    //    [self.test1Btn.layer addAnimation:tranformAnimate forKey:@"A"];
    
    
    //    CABasicAnimation *positionAnima = [CABasicAnimation animationWithKeyPath:@"position.y"];
    //    positionAnima.fromValue = @(self.test1Btn.center.y);
    //    positionAnima.toValue = @(self.test1Btn.center.y-30);
    //    positionAnima.timingFunction = [CAMediaTimingFunction functionWithName:
    //                                    kCAMediaTimingFunctionEaseIn];
    //    CABasicAnimation *transformAnima = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    //    transformAnima.fromValue = @(0);
    //    transformAnima.toValue = @(M_PI);
    //    transformAnima.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //    CAAnimationGroup *animaGroup = [CAAnimationGroup animation];
    //    animaGroup.duration = 4;
    //    animaGroup.repeatCount = HUGE_VALF;
    //    animaGroup.fillMode = kCAFillModeForwards;
    //    animaGroup.removedOnCompletion = NO;
    //    animaGroup.animations = @[positionAnima,transformAnima];[self.test1Btn.layer addAnimation:animaGroup forKey:@"Animation"];
    //    self.test1Btn.layer.shadowColor = [UIColor blackColor].CGColor;
    //    self.test1Btn.layer.shadowRadius = 10;
    //    self.test1Btn.layer.shadowOffset = CGSizeMake(0, 0);
    //    self.test1Btn.layer.shadowOpacity = 0.8;
    
    
    //    [UIView animateWithDuration:0.1 delay:1 options:UIViewAnimationOptionRepeat |UIViewAnimationOptionAutoreverse animations:^{
    //        CGRect rectFrame = self.test1View.frame;
    //        rectFrame.origin.y = 500;
    //        self.test1View.frame = rectFrame;
    //    } completion:nil];
    
    //    [UIView animateKeyframesWithDuration:3 delay:1 options:UIViewKeyframeAnimationOptionRepeat | UIViewKeyframeAnimationOptionAutoreverse animations:^{
    //        CGRect rectFrame = self.test1View.frame;
    //        rectFrame.origin.y = 500;
    //        self.test1View.frame = rectFrame;
    //    } completion:nil];
    
    // test1 同时创建圆角和阴影
    //self.test1Btn.layer.masksToBounds = YES;
    self.test1Btn.layer.cornerRadius = self.test1Btn.bounds.size.height/2;
    self.test1Btn.layer.shadowOffset = CGSizeMake(0, 0);
    self.test1Btn.layer.shadowColor = [UIColor blackColor].CGColor;
    self.test1Btn.layer.shadowRadius = 6;
    self.test1Btn.layer.shadowOpacity = 0.8;
    self.test1Btn.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.test1Btn.bounds cornerRadius:self.test1Btn.bounds.size.height/2].CGPath;
    
    [UIView animateWithDuration:2 delay:1 usingSpringWithDamping:0.4 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        CGRect rectFrame = self.test1Btn.frame;
        rectFrame.origin.y = 550;
        self.test1Btn.frame = rectFrame;
        self.test1Btn.layer.contentsScale = 1.0;
    } completion:nil];
    
    
    
    // test2 同时创建圆角和阴影,并且添加有小到大的缩放
    //self.test1Btn.layer.masksToBounds = YES;
    self.test2Btn.layer.cornerRadius = self.test2Btn.bounds.size.height/2;
    self.test2Btn.layer.shadowOffset = CGSizeMake(0, 0);
    self.test2Btn.layer.shadowColor = [UIColor blackColor].CGColor;
    self.test2Btn.layer.shadowRadius = 6;
    self.test2Btn.layer.shadowOpacity = 0.8;
    self.test2Btn.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.test2Btn.bounds cornerRadius:self.test2Btn.bounds.size.height/2].CGPath;
    self.test2Btn.transform = CGAffineTransformMakeScale(0.05, 0.05);
    [UIView animateWithDuration:2 delay:1 usingSpringWithDamping:0.4 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        CGRect rectFrame = self.test2Btn.frame;
        rectFrame.origin.y = 550;
        self.test2Btn.frame = rectFrame;
        self.test2Btn.layer.contentsScale = 1.0;
        self.test2Btn.transform = CGAffineTransformMakeScale(1.0, 1.0);
    } completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)test1BtnClick:(UIButton *)sender {
}

- (IBAction)beginAnimateBtn:(UIButton *)sender {
    CGRect rectFrame = self.test1Btn.frame;
    rectFrame.origin.y = 667;
    self.test1Btn.frame = rectFrame;
    
    CGRect rectFrame2 = self.test2Btn.frame;
    rectFrame2.origin.y = 667;
    self.test2Btn.frame = rectFrame2;
    
    [self beginToAnimationSomething];
}


@end
