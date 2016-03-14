//
//  ChecklistItem.h
//  Checklists
//
//  Created by Nguyen Duy Khanh on 3/14/16.
//  Copyright © 2016 Nguyen Duy Khanh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChecklistItem : NSObject

//Doi tuong checklistItem co 2 thuoc tinh NSString va BOOL

@property (nonatomic,copy)NSString *text;
@property (nonatomic,assign) BOOL checked;

-(void)toggleChecked;
@end
