//
//  AddItemViewController.m
//  Checklists
//
//  Created by Nguyen Duy Khanh on 3/14/16.
//  Copyright © 2016 Nguyen Duy Khanh. All rights reserved.
//

#import "AddItemViewController.h"
#import "ChecklistItem.h"

@interface AddItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation AddItemViewController

-(IBAction)cancel
{
    [self.delegate addItemViewControllerDidCancel:self];
}

-(IBAction)done
{
    ChecklistItem *item = [[ChecklistItem alloc]init];
    item.text = self.textField.text;
    item.checked = NO;
    
    [self.delegate addItemViewController:self didFinishingAddingItem:item];
}

-(NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.textField becomeFirstResponder];
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    if ([newText length] > 0) {
        self.doneBarButton.enabled = YES;
    } else {
        self.doneBarButton.enabled = NO;
    }
    
    return YES;
}
@end
