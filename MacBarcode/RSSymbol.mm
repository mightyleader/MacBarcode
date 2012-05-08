//
//  RSSymbol.m
//  MacBarcode
//
//  Created by Robert Stearn on 07.05.12.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import "RSSymbol.h"

@implementation RSSymbol

@synthesize pattern = _pattern, startingElement = _startingElement, xWidth = _xWidth;

- (id)initWithFrame:( NSRect )frame andData:( NSArray* )data startingWith:(enum kRSStarter) starter andX:( int ) xW
{
    self = [super initWithFrame:frame];
    if ( self ) 
	{
        [self setXWidth:xW];
		[self setStartingElement:starter];
		_pattern = [NSArray arrayWithArray:data];
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    for ( int rr = 0; rr < _pattern.count; rr++ ) 
	{
		NSRect element = NSMakeRect( 0, 0, _xWidth * [[_pattern objectAtIndex:rr] intValue], self.frame.size.height );
		
	}
}

@end
