//
//  RDTwoViewController.h
//  segueTest
//
//  Created by Geoffrey Hunt on 2013/08/20.
//  Copyright (c) 2013 Geoffrey Hunt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RDTwoViewController : UIViewController

- (IBAction)backFromModal:(UIStoryboardSegue *)segue;

- (IBAction)backToTwo:(UIStoryboardSegue *)segue;

@end
