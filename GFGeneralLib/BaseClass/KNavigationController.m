//
//  KNavigationController.m
//  JBJ
//
//  Created by 王刚锋 on 2019/3/26.
//  Copyright © 2019 GF. All rights reserved.
//

#import "KNavigationController.h"
#import "UIBarButtonItem+Category.h"
#define NavBarFont [UIFont boldSystemFontOfSize:18]
@interface KNavigationController ()

@end

@implementation KNavigationController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}




- (void)viewDidLoad {
    [super viewDidLoad];

}
-(UIImageView*)findlineviw:(UIView*)view{
    
    if ([view isKindOfClass:[UIImageView class]]&&view.bounds.size.height<=1.0) {
        return (UIImageView*) view;
    }for (UIImageView *subview in view.subviews) {
        UIImageView *lineview = [self findlineviw:subview];
        if (lineview) {
            return lineview;
        }
    }
    return nil;
}
+ (void)initialize {
    // 1.设置导航栏主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:17.0f];
    [navBar setTitleTextAttributes:attrs];
    // 2.去掉导航栏所有返回按钮后边的文字
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
    
    //设置导航栏背景图片为一个空的image，这样就透明了
    [navBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //去掉透明后导航栏下边的黑边
    [navBar setShadowImage:[UIImage new]];
    //
    
    
//    navBar.translucent = NO;
    

}


//当 push 时隐藏 tabbar
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count >= 1) {
        viewController.hidesBottomBarWhenPushed = YES;
        // 设置返回按钮
        [self setBackItem:viewController];
    }
    [super pushViewController:viewController animated:animated];
    

}

- (void)setBackItem:(UIViewController *)vc {
    //设置后退的手势
    self.interactivePopGestureRecognizer.delegate = nil;
    
    //        UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithImage:IMG(@"back") style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    vc.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithImage:@"nav_back" andBarButtonItemBlock:^{
        [self back];
    }];
}

- (void)back {
    
    if (self.presentingViewController != nil) {
        [self dismissViewControllerAnimated:NO completion:nil];
    } else {
        [self popViewControllerAnimated:YES];
    }
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
}
@end
