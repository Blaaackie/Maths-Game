//
//  AdditionQuestion.h
//  Maths Game
//
//  Created by Tye Blackie on 2017-07-25.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSInteger randomNumber;
@property NSInteger randomNumber2;

-(NSString*) question;
-(instancetype) init;


@end
