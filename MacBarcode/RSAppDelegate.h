//
//  RSAppDelegate.h
//  MacBarcode
//
//  Created by Robert Stearn on 07.05.12.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RSAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSView *drawView;
@property (assign) IBOutlet NSTextField *stringCheck;
@property (assign) IBOutlet NSTextView *textPlace;
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSPopUpButton *dropBox;
@property (assign) IBOutlet NSTextFieldCell *actualText;

- (IBAction)dropDown:(id)sender;

@end
