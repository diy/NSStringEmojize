//
//  NSString+Emojize.m
//  Field Recorder
//
//  Created by Jonathan Beilin on 11/5/12.
//  Copyright (c) 2012 DIY. All rights reserved.
//

#import "NSString+Emojize.h"

@implementation NSString (Emojize)
- (NSString *)emojizedString
{
    return [NSString emojizedStringWithString:self];
}

+ (NSString *)emojizedStringWithString:(NSString *)aString
{
    NSDictionary *emojiDict = @{
        @":smile:"          : @"\U0001F604",
        @":smirk:"          : @"\U0001F60F",
        @":wink:"           : @"\U0001F609",
        @":sunglasses:"     : @"\U0001F60E",
        @":flushed:"        : @"\U0001F633",
        @":laughing:"       : @"\U0001F606",
        
        @":persevere:"      : @"\U0001F623",
        @":astonished:"     : @"\U0001F632",
        @":hearteyescat:"   : @"\U0001F63B",
        @":bike:"           : @"\U0001F6B2",
        @":bell:"           : @"\U0001F514",
        @":bulb:"           : @"\U0001F4A1",
        
        @":zap:"            : @"\ue13d",
        @":interrobang:"    : @"\ue021\ue020",
        @":cow2:"           : @"\U0001F404",
        @":shipit:"         : @"\U0001F3A9\U0001F430",
        @":metal:"          : @"\U0001F3B8",
        @":microscope:"     : @"\U0001F52C",
        
        @":mushroom:"       : @"\U0001F344",
        @":pizza:"          : @"\U0001F355",
        @":crown:"          : @"\ue10e",
        @":plus:"           : @"\U0001F44D",
        @":tada:"           : @"\U0001F389",
        @":thoughtballoon:" : @"\U0001F4AD",
        @":fire:"           : @"\U0001F525",
        @":crystalball:"    : @"\U0001F52E",
        @":wrench:"         : @"\U0001F527",
        @":microphone:"     : @"\U0001F3A4",
        @":art:"            : @"\U0001F3A8",
        @":okhand:"         : @"\U0001F44C",
        @":muscle:"         : @"\U0001F4AA",
        @":clap:"           : @"\U0001F44F",
        @":spaceinvader:"   : @"\U0001F47E",
        @":trophy:"         : @"\U0001F3C6",
        @":penguin:"        : @"\U0001F427",
        @":screamcat:"      : @"\U0001F640"
    };
    
    __block NSString *text = aString;
    [emojiDict enumerateKeysAndObjectsUsingBlock:^(NSString *cheat, NSString *unicode, BOOL *stop) {
        text = [text stringByReplacingOccurrencesOfString:cheat withString:unicode];
    }];

    return text;
}

@end
