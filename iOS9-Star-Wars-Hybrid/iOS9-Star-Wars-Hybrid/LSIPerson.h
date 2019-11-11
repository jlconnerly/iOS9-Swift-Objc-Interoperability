//
//  LSIPerson.h
//  iOS9-Star-Wars-Hybrid
//
//  Created by Paul Solt on 11/11/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LSIPerson : NSObject

@property (nonatomic, copy, readonly, nonnull) NSString *name;
@property (nonatomic, copy, readonly, nonnull) NSString *birthYear;
@property (nonatomic, readonly) double height;
@property (nonatomic, copy, readonly, nonnull) NSString *eyeColor;

- (nonnull instancetype)initWithName:(nonnull NSString *)name
                   birthYear:(nonnull NSString *)birthYear
                      height:(double)height
                    eyeColor:(nonnull NSString *)eyeColor;


- (nullable instancetype)initWithDictionary:(nonnull NSDictionary *)dictionary;

@end
