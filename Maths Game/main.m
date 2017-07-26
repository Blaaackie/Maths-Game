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
#import "InputHandler.h"


//while loop in main

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BOOL quizMe = YES;
        
        while (quizMe) {
        
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            
            InputHandler *inputHandler = [[InputHandler alloc] init];
            
            NSString *mathQuestion = [question1 question];
            
            NSString *input = [inputHandler inputForPrompt:mathQuestion];
            
            NSInteger userAnswerInt = [input integerValue];
            
            if ([input isEqualToString:@"quit"]) {
                break;
            } else if (userAnswerInt == (question1.randomNumber + question1.randomNumber2)){
                printf("Thats Right!\n");
            } else {
                printf("WRONG!!!\n");
            };
        
        }
        return 0;
    }
}
