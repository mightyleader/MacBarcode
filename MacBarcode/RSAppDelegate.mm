//
//  RSAppDelegate.m
//  MacBarcode
//
//  Created by Robert Stearn on 07.05.12.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import "RSAppDelegate.h"
#import "RSBarcodeViewController.h"


@implementation RSAppDelegate

@synthesize stringCheck = _stringCheck;
@synthesize textPlace = _textPlace;
@synthesize window = _window;
@synthesize dropBox = _dropBox;
@synthesize actualText = _actualText;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	CGFloat height = _window.frame.size.height;
	RSBarcodeViewController *bVC = [[RSBarcodeViewController alloc] initWithType:kRSCode39 andData:@"457383" atPosition:NSMakeRect( 0,0, _window.frame.size.width , height )];
	
	[_window.contentView addSubview:bVC.view];

}

- (IBAction)dropDown:(id)sender 
{
	
}

@end
