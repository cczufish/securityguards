//
//  NavigationViewController.m
//  funding
//
//  Created by Zhao yang on 12/18/13.
//  Copyright (c) 2013 hentre. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initDefaults {
    [super initDefaults];
}

- (void)initUI {
    [super initUI];
    UIButton *btnLeft = [[UIButton alloc] initWithFrame:CGRectMake(8, [UIDevice systemVersionIsMoreThanOrEuqal7] ? (20 + 8) : 8, 55 / 2, 55 / 2)];
    [btnLeft setBackgroundImage:[UIImage imageNamed:@"btn_back"] forState:UIControlStateNormal];
    [btnLeft addTarget:self action:@selector(popupViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.topbarView addSubview:btnLeft];
}

- (void)setUp {
    [super setUp];
}

- (void)popupViewController {
    if(self.navigationController != nil) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
