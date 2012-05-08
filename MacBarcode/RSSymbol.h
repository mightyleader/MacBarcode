//
//  RSSymbol.h
//  MacBarcode
//
//  Created by Robert Stearn on 07.05.12.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import <Cocoa/Cocoa.h>

enum kRSStarter 
{
	kRSBar		= 0,
	kRSSpace	= 1
};

@interface RSSymbol : NSView
@property ( nonatomic, retain ) NSArray *pattern;
@property ( nonatomic ) int startingElement;
@property ( nonatomic ) int xWidth;

@end
