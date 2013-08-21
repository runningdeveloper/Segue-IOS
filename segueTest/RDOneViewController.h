//
//  RDOneViewController.h
//  segueTest
//
//  Created by Geoffrey Hunt on 2013/08/20.
//  Copyright (c) 2013 Geoffrey Hunt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RDOneViewController : UIViewController <UIActionSheetDelegate>

- (IBAction)backToOne:(UIStoryboardSegue *)segue;


- (IBAction)showAlert:(id)sender;

@end
