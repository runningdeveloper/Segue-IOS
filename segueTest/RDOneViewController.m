//
//  RDOneViewController.m
//  segueTest
//
//  Created by Geoffrey Hunt on 2013/08/20.
//  Copyright (c) 2013 Geoffrey Hunt. All rights reserved.
//

#import "RDOneViewController.h"

@interface RDOneViewController ()

@end

@implementation RDOneViewController

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

- (IBAction)backToOne:(UIStoryboardSegue *)segue{
    NSLog(@"back to 1 from vc 4");
}

- (IBAction)showAlert:(id)sender {
    UIActionSheet *alertMenu = [[UIActionSheet alloc]
                                initWithTitle:@"Alert Popup" //Alert Title
                                delegate:self
                                cancelButtonTitle:@"Cancel" //Cancel Title
                                destructiveButtonTitle:nil
                                otherButtonTitles:@"go to vc 4", @"go to vc 3" , nil]; //two menu items titles
    [alertMenu showInView:self.view];
}

//the delagte of the UIActionSheet
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    switch (buttonIndex) { //switch based on the button clicked
        case 0:
            NSLog(@"go to vc 4 pressed");
            [self performSegueWithIdentifier:@"alert.1.to.4" sender:self];
            break;
        case 1:
            NSLog(@"go to vc 3 pressed");
            [self performSegueWithIdentifier:@"alert.1.to.3" sender:self];
            break;
        default:
            NSLog(@"if we got here there is something wrong");
        break;
    }
    
}


@end
