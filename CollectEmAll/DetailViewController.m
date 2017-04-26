//
//  DetailViewController.m
//  CollectEmAll
//
//  Created by Shane Nelson on 4/25/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation DetailViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
  self.title = self.characterName;
  self.imageView.image =[UIImage imageNamed:self.characterImageName];
}


- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

@end
