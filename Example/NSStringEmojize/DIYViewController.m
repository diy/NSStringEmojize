//
//  DIYViewController.m
//  NSStringEmojize
//
//  Created by Jonathan Beilin on 1/30/13.
//  Copyright (c) 2013 DIY. All rights reserved.
//

#import "DIYViewController.h"

#import "NSString+Emojize.h"

@interface DIYViewController ()

@end

@implementation DIYViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSString *emojiString = @"This comment has an emoji :mushroom:";
    
    // Make UILabel
    UILabel *emojiLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 220, 30)];
    emojiLabel.center = self.view.center;
    emojiLabel.text = [emojiString emojizedString];
    emojiLabel.font = [UIFont systemFontOfSize:12.0f];
    emojiLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:emojiLabel];
}

@end
