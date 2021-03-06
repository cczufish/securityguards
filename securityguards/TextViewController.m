//
//  TextViewController.m
//  securityguards
//
//  Created by Zhao yang on 12/30/13.
//  Copyright (c) 2013 hentre. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController {
    UILabel *lbl;
    UITextField *txt;
}

@synthesize defaultValue;
@synthesize txtDescription;
@synthesize delegate;

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

- (void)initUI {
    [super initUI];
    self.view.backgroundColor = [UIColor appGray];
    
    lbl = [[UILabel alloc] initWithFrame:CGRectMake(10, self.topbarView.bounds.size.height + 5, 250, 30)];
    
    lbl.font = [UIFont systemFontOfSize:13.f];
    lbl.backgroundColor = [UIColor clearColor];
    [self.view addSubview:lbl];
    
    txt = [[UITextField alloc] initWithFrame:CGRectMake(0, lbl.frame.origin.y + lbl.bounds.size.height + 5, [UIScreen mainScreen].bounds.size.width, 30)];
    txt.backgroundColor = [UIColor whiteColor];
    txt.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 6, 0)];
    txt.leftViewMode = UITextFieldViewModeAlways;
    txt.font = [UIFont systemFontOfSize:14.f];
    txt.textColor = [UIColor darkGrayColor];
    txt.clearButtonMode = UITextFieldViewModeWhileEditing;
    txt.contentVerticalAlignment  = UIControlContentVerticalAlignmentCenter;
    [self.view addSubview:txt];
    
    UIButton *btnSubmit =  [[UIButton alloc] initWithFrame:CGRectMake(0, txt.frame.origin.y + txt.bounds.size.height + 30, 400 / 2, 53 / 2)];
    btnSubmit.center = CGPointMake(self.view.center.x, btnSubmit.center.y);
    [btnSubmit setBackgroundImage:[UIImage imageNamed:@"btn_blue"] forState:UIControlStateNormal];
    [btnSubmit setBackgroundImage:[UIImage imageNamed:@"btn_blue_highlighted"] forState:UIControlStateHighlighted];
    [btnSubmit addTarget:self action:@selector(btnSubmitPressed:) forControlEvents:UIControlEventTouchUpInside];
    [btnSubmit setTitle:NSLocalizedString(@"submit", @"") forState:UIControlStateNormal];
    [self.view addSubview:btnSubmit];
}

- (void)setUp {
    lbl.text = self.txtDescription == nil ? [XXStringUtils emptyString] : self.txtDescription;
    txt.text = self.defaultValue == nil ? [XXStringUtils emptyString] : self.defaultValue;
}

- (void)viewWillAppear:(BOOL)animated {
    [txt becomeFirstResponder];
}

- (void)btnSubmitPressed:(id)sender {
    int c = [UIApplication sharedApplication].windows.count;
    [[AlertView currentAlertView] setMessage:@"lalala" forType:AlertViewTypeWaitting];
    [[AlertView currentAlertView] alertAutoDisappear:NO lockView:YES];
//    for(int i=0; i<[UIApplication sharedApplication].windows.count; i++) {
//        UIWindow *w = [[UIApplication sharedApplication].windows objectAtIndex:i];
//        NSLog([[w class] description]);
//    }
//    
//    NSLog([[[UIApplication sharedApplication].keyWindow class] description]);
}

- (void)popupViewController {
    [self dismissViewControllerAnimated:YES completion:^{}];
}

@end
