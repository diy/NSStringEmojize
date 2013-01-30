//
//  NSStringEmojizeTests.m
//  NSStringEmojizeTests
//
//  Created by Jonathan Beilin on 1/30/13.
//  Copyright (c) 2013 DIY. All rights reserved.
//

#import "NSStringEmojizeTests.h"

#import "NSString+Emojize.h"

@implementation NSStringEmojizeTests

- (void)testCheatcodes
{
    NSString *emojiString = @"This comment has a smiley :mushroom:";
    STAssertTrue([[emojiString emojizedString] rangeOfString:@"\U0001F344"].location != NSNotFound, nil);
}

@end
