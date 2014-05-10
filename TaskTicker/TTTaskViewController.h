//
//  TTTaskViewController.h
//  TaskTicker
//
//  Created by Guang Chen on 5/10/14.
//  Copyright (c) 2014 Guang Chen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TTTaskViewController : NSViewController
- (IBAction)startTask:(id)sender;
@property (strong) IBOutlet NSComboBox *hourBox;
@property (strong) IBOutlet NSComboBox *minuteBox;

@end
