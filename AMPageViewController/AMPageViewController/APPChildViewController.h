//
//  APPChildViewController.h
//  PageApp
//
//  Created by Rafael Garcia Leiva on 10/06/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APPChildViewController : UIPageViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>{
    NSArray *myViewControllers;
}

@property (assign, nonatomic) NSInteger index;
@property (strong, nonatomic) IBOutlet UILabel *screenNumber;

@end
