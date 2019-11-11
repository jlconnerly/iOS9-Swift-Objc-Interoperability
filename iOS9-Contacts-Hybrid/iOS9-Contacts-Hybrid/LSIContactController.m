//
//  LSIContactController.m
//  iOS9-Contacts-Hybrid
//
//  Created by Paul Solt on 11/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"
#import "iOS9_Contacts_Hybrid-Swift.h"

@implementation LSIContactController

- (instancetype)init {
	self = [super init];
	if (self) {
		// [[NSArray alloc] init] vs. [NSArray arrayWith ...] on Wednesday
		_contacts = [NSArray arrayWithObjects:
					 [[Contact alloc] initWithName:@"Paul" relationship:@"Myself"],
					 [[Contact alloc] initWithName:@"Steph" relationship:@"Wife"], nil];
	}
	return self;
}

@end
