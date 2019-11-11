//
//  ViewController.m
//  iOS9-Star-Wars-Hybrid
//
//  Created by Paul Solt on 11/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "iOS9_Star_Wars_Hybrid-Swift.h"

@interface ViewController ()

@property (nonatomic, nonnull) PersonController *personController;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {
		_personController = [[PersonController alloc] init];
	}
	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	// Fetch
	[self.personController searchForPeopleWith:@"Luke" completion:^(NSArray<LSIPerson *> * _Nullable people, NSError * _Nullable error) {
		
		NSLog(@"People: %@", people);
		
	}];
	
	
	
}


@end
