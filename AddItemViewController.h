//
//  AddItemViewController.h
//  Checklists
//
//  Created by Nguyen Duy Khanh on 3/14/16.
//  Copyright © 2016 Nguyen Duy Khanh. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ChecklistItem;
@class AddItemViewController;

@protocol AddItemViewControllerDelegate <NSObject>

-(void)addItemViewControllerDidCancel:(AddItemViewController*)controller;
-(void)addItemViewController:(AddItemViewController*)controller didFinishingAddingItem:(ChecklistItem*)item;

@end

@interface AddItemViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneBarButton;
@property (weak, nonatomic) id <AddItemViewControllerDelegate> delegate;

-(IBAction)cancel;
-(IBAction)done;

@end
