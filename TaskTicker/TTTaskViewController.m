//
//  TTTaskViewController.m
//  TaskTicker
//
//  Created by Guang Chen on 5/10/14.
//  Copyright (c) 2014 Guang Chen. All rights reserved.
//

#import "TTTaskViewController.h"
#import "TTAppDelegate.h"

@interface TTTaskViewController ()

@end

@implementation TTTaskViewController
@synthesize hourBox,minuteBox;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (IBAction)startTask:(id)sender {
    TTAppDelegate *app = [[NSApplication sharedApplication] delegate];
    [app startTaskWithHour:[hourBox.objectValue integerValue] Minute:[minuteBox.objectValue integerValue]];
    [self.view.window close];
}
@end
