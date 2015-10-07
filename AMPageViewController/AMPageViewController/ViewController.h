//
//  ViewController.h
//  AMPageViewController
//
//  Created by Marta del Arco on 7/10/15.
//  Copyright © 2015 Marta del Arco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;
@property (weak, nonatomic) IBOutlet UIView *pageControlView;
- (IBAction)entrarAction:(id)sender;


@end

