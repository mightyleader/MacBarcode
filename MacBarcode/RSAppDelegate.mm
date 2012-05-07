//
//  RSAppDelegate.m
//  MacBarcode
//
//  Created by Robert Stearn on 07.05.12.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import "RSAppDelegate.h"
#import "RSBarcodeViewController.h"
#include <iostream>
#include "Code39.h"
#include "Code128.h"
#include "Codabar.h"
#include "EAN8.h"
#include "EAN13.h"
#include "UPCA.h"
#include "UPCE.h"
#include "Interleaved2of5.h"
#include "Symbol.h"


@implementation RSAppDelegate

@synthesize drawView = _drawView;
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
	string *testString = new string("AIM1234");
	
	RSBarcodeViewController *bVC = [[RSBarcodeViewController alloc] initWithType:kRSCode128 andData:@"AIM1234" atPosition:NSMakeRect( 0, 0, 500, 100 )];
	

}

- (IBAction)dropDown:(id)sender 
{
	
}

@end
