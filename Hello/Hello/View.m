//
//  View.m
//  Hello
//
//  Created by nyuguest on 8/20/13.
//  Copyright (c) 2013 nyuguest. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blueColor];
	}
	return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect)rect
{
	// Drawing code
	//NSString *string = @"Hello, World!";
    
    NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=GOOG&f=sl1t1"];
    
	NSError *error;
	NSString *string = [[NSString alloc]
                        initWithContentsOfURL: url
                        encoding: NSUTF8StringEncoding
                        error: &error
                        ];
    
	if (string == nil) {
		string = [error localizedDescription];
	}
    
    
	CGPoint point = CGPointMake(0.0, 200.0);
	UIFont *font = [UIFont systemFontOfSize: 24.0];
	[string drawAtPoint: point withFont: font];
}

@end
