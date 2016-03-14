//
//  ChecklistItem.m
//  Checklists
//
//  Created by Nguyen Duy Khanh on 3/14/16.
//  Copyright © 2016 Nguyen Duy Khanh. All rights reserved.
//

#import "ChecklistItem.h"

@implementation ChecklistItem

-(void)toggleChecked
{
    self.checked = !self.checked;
}
@end
