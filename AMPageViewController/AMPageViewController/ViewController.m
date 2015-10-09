//
//  ViewController.m
//  AMPageViewController
//
//  Created by Marta del Arco on 7/10/15.
//  Copyright © 2015 Marta del Arco. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
   /* self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self pageControlView] bounds]];
    
    APPChildViewController *initialViewController = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
    
    [self performSelector:@selector(findPageControl) withObject:nil afterDelay:0.2f];*/
}
- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}




/*- (void) findPageControl {
    [self performSelector:@selector(findPageControl) withObject:nil afterDelay:4.0f];
    NSLog(@"Change pager");
}*/




/*- (APPChildViewController *)viewControllerAtIndex:(NSUInteger)index {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    APPChildViewController *childViewController = (APPChildViewController *)[storyboard instantiateViewControllerWithIdentifier:@"APPChildViewController"];
    
    childViewController.index = index;
    
    return childViewController;
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(APPChildViewController *)viewController index];
    
    if (index == 0) {
        return nil;
    }
    
    // Decrease the index by 1 to return
    index--;
    NSLog(@"%s",__FUNCTION__);
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(APPChildViewController *)viewController index];
    
    index++;
    
    if (index == 5) {
        return [self viewControllerAtIndex:0];
        // return nil;
    }
    NSLog(@"%s",__FUNCTION__);
    return [self viewControllerAtIndex:index];
    
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    // The number of items reflected in the page indicator.
    return 5;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    // The selected item reflected in the page indicator.
    return 0;
}
*/


- (IBAction)entrarAction:(id)sender {
    NSLog(@"Entrar button");
}
@end
