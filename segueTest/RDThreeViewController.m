//
//  RDThreeViewController.m
//  segueTest
//
//  Created by Geoffrey Hunt on 2013/08/20.
//  Copyright (c) 2013 Geoffrey Hunt. All rights reserved.
//

#import "RDThreeViewController.h"

@interface RDThreeViewController ()

@end

@implementation RDThreeViewController

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

- (IBAction)backToThree:(UIStoryboardSegue *)segue{
    NSLog(@"back to 3 from vc 4");
}

- (IBAction)delayAndOpen4:(id)sender {
    //2 second delay
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(delayFinished) userInfo:nil repeats:NO];
}

-(void)delayFinished{
    //open the segue
    [self performSegueWithIdentifier:@"from.3.to.4" sender:self];
}

@end
