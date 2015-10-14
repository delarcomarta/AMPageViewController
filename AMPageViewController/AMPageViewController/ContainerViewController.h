//
//  ContainerViewController.h
//  PageApp
//
//  Created by Marta del Arco on 7/10/15.
//  Copyright © 2015 Marta del Arco. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewController : UIPageViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>{
    NSArray *myViewControllers;
    NSInteger currentPageIndex;
}

@property (assign, nonatomic) NSInteger index;
@property (strong, nonatomic) IBOutlet UILabel *screenNumber;

@end
