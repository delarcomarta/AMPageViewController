//
//  ContainerViewController.m
//  PageApp
//
//  Created by Marta del Arco on 7/10/15.
//  Copyright © 2015 Marta del Arco. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.delegate = self;
    self.dataSource = self;
    
    UIViewController *p1 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro1ID"];
    UIViewController *p2 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro2ID"];
  /*  UIViewController *p3 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro3ID"];
    UIViewController *p4 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"Intro4ID"];*/
    
    myViewControllers = @[p1,p2];
    
    [self setViewControllers:@[p1]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:NO completion:nil];
    
    [self performSelector:@selector(findPageControl) withObject:nil afterDelay:0.2f];
    
    NSLog(@"loaded!");
}
    
  //  self.screenNumber.text = [NSString stringWithFormat:@"Screen #%d", self.index];

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void) findPageControl {
 [self performSelector:@selector(findPageControl) withObject:nil afterDelay:4.0f];
 NSLog(@"Change pager");
    
 }

-(UIViewController *)viewControllerAtIndex:(NSUInteger)index
{
    return myViewControllers[index];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
     viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    
    --currentIndex;
    currentIndex = currentIndex % (myViewControllers.count);
    return [myViewControllers objectAtIndex:currentIndex];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    
    ++currentIndex;
    currentIndex = currentIndex % (myViewControllers.count);
    return [myViewControllers objectAtIndex:currentIndex];
}

-(NSInteger)presentationCountForPageViewController:
(UIPageViewController *)pageViewController
{
    return myViewControllers.count;
}

-(NSInteger)presentationIndexForPageViewController:
(UIPageViewController *)pageViewController
{
    return 0;
}


@end
