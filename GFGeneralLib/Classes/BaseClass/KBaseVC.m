//
//  KBaseVC.m
//  JBJ
//
//  Created by 王刚锋 on 2019/3/26.
//  Copyright © 2019 GF. All rights reserved.
//

#import "KBaseVC.h"

@interface KBaseVC ()

@end

@implementation KBaseVC
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:false animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
}


-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
  
}

@end
