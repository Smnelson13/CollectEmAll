//
//  CharacterListTableViewController.m
//  CollectEmAll
//
//  Created by Shane Nelson on 4/25/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

#import "CharacterListTableViewController.h"
#import "CharacterCellTableViewCell.h"

@interface CharacterListTableViewController ()

@end

@implementation CharacterListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
  
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.characters.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CharacterCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CharacterCell" forIndexPath:indexPath];
  
  NSString *character = self.characters[indexPath.row];
  cell.characterLabel.text = character;
 
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
  NSString *chosenCharacter = self.characters[indexPath.row];
  [self.delegate charachterWasChosen:chosenCharacter];
}




@end
