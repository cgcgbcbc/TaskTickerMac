//
//  TTAppDelegate.m
//  TaskTicker
//
//  Created by Guang Chen on 5/10/14.
//  Copyright (c) 2014 Guang Chen. All rights reserved.
//

#import "TTAppDelegate.h"

@implementation TTAppDelegate
@synthesize statusItem,statusMenu;
- (void)awakeFromNib {
    [super awakeFromNib];
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMenu];
    [statusItem setTitle:@"Task"];
    [statusItem setHighlightMode:YES];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)quit:(id)sender {
    
    [NSApp performSelector:@selector(terminate:) withObject:nil afterDelay:0.0];
}
@end
