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


//while loop in main

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *endProgram;
        while (endProgram != @"quit") {
        
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            
            NSString *mathQuestion = [question1 question];
            
            NSLog(@"\n%@", mathQuestion);
            
            char str[255];
            fgets(str, 255, stdin);
            
            NSString *userAnswer = [NSString stringWithUTF8String:str];
            
            NSLog(@"%@", userAnswer);
            
            NSInteger userAnswerInt = [userAnswer integerValue];
            
            if (userAnswerInt == (question1.randomNumber + question1.randomNumber2)) {
                printf("Thats Right!");
            }else {
                printf("WRONG!!!");
            }
            endProgram = userAnswer;
        
        }
        return 0;
    }
}
