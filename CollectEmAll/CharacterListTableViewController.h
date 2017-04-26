//
//  CharacterListTableViewController.h
//  CollectEmAll
//
//  Created by Shane Nelson on 4/25/17.
//  Copyright © 2017 Shane Nelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ChosenCharacterDelegate
- (void)charachterWasChosen:(NSString *)chosenCharacter;

@end

@interface CharacterListTableViewController : UITableViewController

@property (nonatomic) NSArray *characters;
@property (nonatomic) id<ChosenCharacterDelegate> delegate;


@end
