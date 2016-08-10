//
//  ViewController.m
//  AnimationTest
//
//  Created by user on 15/12/16.
//  Copyright © 2015年 dajialai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (strong, nonatomic) IBOutlet UIView *animationView;

@property (assign, nonatomic) BOOL red;
@property (strong, nonatomic) UIColor *curColor;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.curColor = self.button.backgroundColor;
    self.red = YES;
    self.animationView.layer.cornerRadius = 75;
    [self.navigationController setHidesBarsOnSwipe:YES];
//    self.button
    [self registerForPreviewingWithDelegate:self sourceView:self.animationView];
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(doSomeThings) userInfo:nil repeats:YES];
}

- (void)doSomeThings {
//    NSLog(@"hahaha==========%@",[NSDate date]);
    CABasicAnimation *animationColor = [CABasicAnimation animation];
    if (_red) {
        self.red = NO;
        animationColor.toValue = (id)[UIColor greenColor].CGColor;
    }
    else {
        self.red = YES;
        animationColor.toValue = (id)self.curColor.CGColor;
    }

    animationColor.autoreverses = YES;
    animationColor.duration = 2;
    [self.button.layer addAnimation:animationColor forKey:@"backgroundColor"];
    
    CABasicAnimation *animationRadius = [CABasicAnimation animation];
    if (_red) {
        self.red = NO;
        animationRadius.toValue = @(75);
    }
    else {
        self.red = YES;
        animationRadius.toValue = @(0);
    }
    animationRadius.autoreverses = YES;
    animationRadius.duration = 2;
    [self.animationView.layer addAnimation:animationRadius forKey:@"cornerRadius"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (nullable UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    UIViewController *preView = [self.storyboard instantiateViewControllerWithIdentifier:@"lalala"];
    return preView;
}

//- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
//    NSLog(@"hahah");
//}

@end
