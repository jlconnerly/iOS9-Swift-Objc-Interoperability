//
//  LSIContactController.h
//  iOS9-Contacts-Hybrid
//
//  Created by Paul Solt on 11/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

@interface LSIContactController : NSObject

//@property (nonatomic, readonly) NSArray *contacts;
@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;

@end
