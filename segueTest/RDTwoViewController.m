//
//  RDTwoViewController.m
//  segueTest
//
//  Created by Geoffrey Hunt on 2013/08/20.
//  Copyright (c) 2013 Geoffrey Hunt. All rights reserved.
//

#import "RDTwoViewController.h"

@interface RDTwoViewController ()

@end

@implementation RDTwoViewController

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

- (IBAction)backFromModal:(UIStoryboardSegue *)segue{
    NSLog(@"We back from modal popup!");
}

- (IBAction)backToTwo:(UIStoryboardSegue *)segue{
    NSLog(@"back to 2 from vc 4");
}

@end
