//
//  TTAppDelegate.m
//  TaskTicker
//
//  Created by Guang Chen on 5/10/14.
//  Copyright (c) 2014 Guang Chen. All rights reserved.
//

#import "TTAppDelegate.h"
@interface TTAppDelegate()
@property NSInteger hour;
@property NSInteger minute;
@property NSInteger seconds;
@end
@implementation TTAppDelegate
@synthesize statusItem,statusMenu,taskWindowController;
- (void)awakeFromNib {
    [super awakeFromNib];
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMenu];
    [statusItem setTitle:@"Task"];
    [statusItem setHighlightMode:YES];
    self.taskWindowController = [[NSWindowController alloc] initWithWindowNibName:@"NewTaskWindow"];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)quit:(id)sender {
    
    [NSApp performSelector:@selector(terminate:) withObject:nil afterDelay:0.0];
}

- (IBAction)createTask:(id)sender {
    if(!self.taskWindowController.window){
        self.taskWindowController = [[NSWindowController alloc] initWithWindowNibName:@"NewTaskWindow"];
    }
    [self.taskWindowController.window setLevel:NSMainMenuWindowLevel];
    [self.taskWindowController showWindow:self.taskWindowController.window];
    [NSApp activateIgnoringOtherApps:YES];
}

-(void)countDown:(NSTimer *)timer{
    [statusItem setTitle:[NSString stringWithFormat:@"%ld:%ld:%ld",(long)self.hour,(long)self.minute,(long)self.seconds]];
    if(self.hour <= 0 && self.minute <= 0 && self.seconds <= 0){
        [statusItem setTitle:@"Task"];
        [timer invalidate];
    }else if(self.seconds > 0){
        self.seconds --;
    }else if(self.minute > 0){
        self.minute --;
        self.seconds = 59;
    }else if(self.hour > 0){
        self.hour --;
        self.minute = 59;
        self.seconds = 59;
    }
}

- (void) startTaskWithHour:(NSInteger)hour Minute:(NSInteger)minute{
    self.hour = hour;
    self.minute = minute;
    self.seconds = 0;
    NSTimer* timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countDown:) userInfo:nil repeats:YES];
    NSRunLoop *countLoop = [NSRunLoop currentRunLoop];
    [countLoop addTimer:timer forMode:NSDefaultRunLoopMode];
}
@end
