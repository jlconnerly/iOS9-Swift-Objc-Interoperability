//
//  Contact.swift
//  iOS9-Contacts-Hybrid
//
//  Created by Paul Solt on 11/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

// Class or a Struct? Why?
// Manage this code file from Objective-C

// Swift struct is not compatibile with Objective-C, we must use a class
// if we need to put this into Array or Set types

class Contact: NSObject {
	@objc var name: String
	@objc var relationship: String?
	
	@objc init(name: String, relationship: String?) {
		self.name = name
		self.relationship = relationship
	}
}


