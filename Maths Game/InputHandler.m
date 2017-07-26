//
//  InputHandler.m
//  Maths Game
//
//  Created by Tye Blackie on 2017-07-25.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*) inputForPrompt:(NSString*)prompt {
    
    NSLog(@"\n%@", prompt);
    
    char str[255];
    fgets(str, 255, stdin);
    
    NSString *userAnswer = [NSString stringWithUTF8String:str];
    
    NSString *trimmedString = [userAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedString;
    
}

@end
