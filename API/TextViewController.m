//
//  TextViewController.m
//  API
//
//  Created by Rosalyn Kingsmill on 2016-05-31.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@property (nonatomic, weak) UIView *framingView;
@property (nonatomic, weak) NSLayoutConstraint *framingViewHeight;
@property (nonatomic, weak) NSLayoutConstraint *framingViewWidth;
@property (strong, nonatomic) NSString *placeholder;
@property (nonatomic, weak) UITextField *textField;
@property (nonatomic, weak) UIToolbar *toolbar;
@property (nonatomic, weak) UIBarButtonItem *barButton;

@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //FRAMING VIEW
    
    UIView *framingView = [[UIView alloc] initWithFrame:CGRectZero];
    framingView.translatesAutoresizingMaskIntoConstraints = NO;
    framingView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:framingView];
    self.framingView = framingView;
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:framingView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:framingView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    NSLayoutConstraint *framingViewHeight = [NSLayoutConstraint constraintWithItem:framingView
                                                                         attribute:NSLayoutAttributeHeight
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:nil
                                                                         attribute:NSLayoutAttributeNotAnAttribute
                                                                        multiplier:1.0
                                                                          constant:750.0];
    
    NSLayoutConstraint *framingViewWidth = [NSLayoutConstraint constraintWithItem:framingView
                                                                        attribute:NSLayoutAttributeWidth
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:1.0
                                                                         constant:500.0];
    
    [framingView addConstraint:framingViewHeight];
    [framingView addConstraint:framingViewWidth];
    
    self.framingViewHeight = framingViewHeight;
    self.framingViewWidth = framingViewWidth;
    
    //TEXT FIELD
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectZero];
    textField.translatesAutoresizingMaskIntoConstraints = NO;
    textField.backgroundColor = [UIColor whiteColor];
    [self.framingView addSubview:textField];
    
    
    NSLayoutConstraint *textFieldCenterX = [NSLayoutConstraint constraintWithItem:textField
                                                                        attribute:NSLayoutAttributeCenterX
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.framingView
                                                                        attribute:NSLayoutAttributeCenterX
                                                                       multiplier:1
                                                                         constant:1];
    
    NSLayoutConstraint *textFieldCenterY = [NSLayoutConstraint constraintWithItem:textField
                                                                        attribute:NSLayoutAttributeCenterY
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:self.framingView
                                                                        attribute:NSLayoutAttributeCenterY
                                                                       multiplier:1
                                                                         constant:1];
    
    
    NSLayoutConstraint *textFieldWidth = [NSLayoutConstraint constraintWithItem:textField
                                                                      attribute:NSLayoutAttributeWidth
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1
                                                                       constant:300];
    
    NSLayoutConstraint *textFieldHeight = [NSLayoutConstraint constraintWithItem:textField
                                                                       attribute:NSLayoutAttributeHeight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:nil
                                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                                      multiplier:1
                                                                        constant:300];
    
    [self.framingView addConstraints:@[textFieldCenterX, textFieldCenterY, textFieldWidth, textFieldHeight]];
    
    
    //
    ////UI BAR BUTTONS
    //
    //    UIBarButtonItem *flexibleSpace =  [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    //
    //    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:nil action:nil];
    //    [barButton setTitle:@"Enter"];
    //    self.barButton = barButton;
    //
    //    NSArray *toolbarItems = [NSArray arrayWithObjects:flexibleSpace, barButton, flexibleSpace, nil];
    //
    //    //[self setToolbarItems:toolbarItems];
    //    [self.barButton setTintColor:[UIColor orangeColor]];
    //
    //}
    //
    //
    ////NAVIGATION CONTROLLER
    //
    //- (void)viewWillAppear:(BOOL)animated
    //{
    //    [self.navigationController setToolbarHidden:NO animated:YES];
    //}
    //
    //- (void)viewWillDisappear:(BOOL)animated
    //{
    //    [self.navigationController setToolbarHidden:YES animated:YES];
    //}
    //
}
//
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue identifier] isEqualToString:@"ShowCharts"]) {
//        NSIndexPath *indexPath = [self.collectionView indexPathsForSelectedItems][0];
//        Actress *selectedActress = self.actressArray[indexPath.item];
//        DetailViewController *dvc = [segue destinationViewController];
//        dvc.actress = selectedActress;
//    }
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
