//
//  RSBarcodeViewController.mm
//  MacBarcode
//
//  Created by Robert Stearn on 07.05.12.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import "RSBarcodeViewController.h"
#import "RSSymbol.h"
#include "BaseBarcode.h"
#include "Codabar.h"
#include "Code39.h"
#include "Interleaved2of5.h"
#include "Code128.h"
#include "EAN13.h"
#include "EAN8.h"
#include "UPCA.h"
#include "UPCE.h"
#include "Symbol.h"
#include <deque>

@interface RSBarcodeViewController ()

@end

@implementation RSBarcodeViewController

@synthesize xWidth = _xWidth;
@synthesize datamoduleCount = _datamoduleCount;
@synthesize nondatamoduleCount = _nondatamoduleCount;
@synthesize totalmoduleCount = _totalmoduleCount;
@synthesize dataString = _dataString;
@synthesize theView = _theView;

- (id)initWithType:( enum kRSBarcode ) BC andData:(NSString *)barcodeData atPosition:(NSRect)rect
{
	//**call to superclass init**
    self = [super initWithNibName:nil bundle:nil];
    if (self)
	{
		[self setDataString:barcodeData];
		[self.view setFrame:rect];
    }
	
	_theView.frame = rect;
	[self setView:_theView];
	
	//**create the correct subtype**
	string *cplusplus_datastring = new string( [_dataString cStringUsingEncoding:NSASCIIStringEncoding] );
	switch ( BC ) 
	{
		case kRSCodabar:
			barcode = new Codabar( cplusplus_datastring );
			break;
		case kRSCode39:
			barcode = new Code39( cplusplus_datastring );
			break;
		case kRSInterleaved:
			barcode = new Interleaved2of5( cplusplus_datastring );
			break;
		case kRSCode128:
			barcode = new Code128( cplusplus_datastring );
			break;
		case kRSEAN13:
			barcode = new EAN13( cplusplus_datastring );
			break;
		case kRSEAN8:
			barcode = new EAN8( cplusplus_datastring );
			break;
		case kRSUPCA:
			barcode = new UPCA( cplusplus_datastring );
			break;
		case kRSUPCE:
			barcode = new UPCE( cplusplus_datastring );
			break;
		default:
			break;
	}
	
	
	deque< Symbol* > testDeque = barcode->getEncodedSymbols( );
	for ( int gg = 0; gg < testDeque.size( ); gg++ ) 
	{
		NSLog(@"%i. %i", gg, testDeque.at( gg )->getSymbolType( ) );
	}
	
	//add up all the element widths for nondata
	//add up all the element widths for data
	//store them both and the total
	//calc and store the xWidth
	
	//create an RSSymbol for each Symbol
	//Work out the width for each one
	//Draw the RSBar and RSSpace objects inside
	//Add them into self.view
	
	
	
    delete cplusplus_datastring;
    return self;
}



@end
