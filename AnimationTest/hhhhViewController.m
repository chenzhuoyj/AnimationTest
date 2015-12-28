//
//  hhhhViewController.m
//  AnimationTest
//
//  Created by user on 15/12/17.
//  Copyright © 2015年 dajialai. All rights reserved.
//

#import "hhhhViewController.h"
#import "HahaViewController.h"

@interface hhhhViewController ()<UIPreviewActionItem>

@end

@implementation hhhhViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"hahah");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"hahah======");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonDidTap:(UIButton *)sender {
    NSLog(@"button tap");
    HahaViewController *hahaVC = [HahaViewController new];
    [hahaVC.view setFrame:CGRectMake(0, 0, 260, 380)];
    hahaVC.modalPresentationStyle = UIModalPresentationPopover;
    hahaVC.popoverPresentationController.sourceView = sender;
    hahaVC.popoverPresentationController.sourceRect = sender.bounds;
    [self presentViewController:hahaVC animated:YES completion:nil];
}

- (NSArray <id <UIPreviewActionItem>> *)previewActionItems {
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"Action 1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"Action 1 triggered");
    }];
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"Action 2" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"Action 2 triggered");
    }];
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"Action 3" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"Action 3 triggered");
    }];

//    UIPreviewActionGroup *group1 = [UIPreviewActionGroup actionGroupWithTitle:@"Group 1" style:UIPreviewActionStyleSelected actions:@[action2,action3]];
    NSArray *arr = @[action1,action2,action3];
    return arr;
}

@end
