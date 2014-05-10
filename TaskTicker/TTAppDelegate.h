//
//  TTAppDelegate.h
//  TaskTicker
//
//  Created by Guang Chen on 5/10/14.
//  Copyright (c) 2014 Guang Chen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TTAppDelegate : NSObject <NSApplicationDelegate>

@property (strong) IBOutlet NSMenu *statusMenu;
- (IBAction)quit:(id)sender;
- (IBAction)createTask:(id)sender;
@property (strong) NSStatusItem *statusItem;
@property (strong) NSWindowController *taskWindowController;
- (void) startTaskWithHour:(NSInteger)hour Minute:(NSInteger)minute;
@end
