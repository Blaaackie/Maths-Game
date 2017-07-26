//
//  main.m
//  Maths Game
//
//  Created by Tye Blackie on 2017-07-25.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
        
        NSString *mathQuestion = [question1 question];
        
        NSLog(@"\n%@", mathQuestion);
        
        char str[255];
        fgets(str, 255, stdin);
        
        NSString *userAnswer = [NSString stringWithUTF8String:str];
        
        NSLog(@"%@", userAnswer);
        
    }    return 0;
}
