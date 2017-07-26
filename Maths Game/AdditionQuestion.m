//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Tye Blackie on 2017-07-25.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


-(instancetype) init{
    self = [super init];
    if (self) {
        int smallestNumber = 10;
        int largestNumber = 100;
        _randomNumber = smallestNumber + arc4random() %(largestNumber+1-smallestNumber);
        _randomNumber2 = smallestNumber + arc4random() %(largestNumber+1-smallestNumber);
    }
    return self;
}



-(NSString*) question {
    return [NSString stringWithFormat:@"What is the sum of %ld and %ld? \n", (long)_randomNumber, (long)_randomNumber2];
}


    
    
    
    





@end


