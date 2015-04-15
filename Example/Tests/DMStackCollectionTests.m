//
//  DMStackCollectionTests.m
//  okta-ios-utils
//
//  Created by Umang Shah on 4/15/15.
//  Copyright (c) 2015 Chandra Shirashyad. All rights reserved.
//

#import "DMStackCollection.h"

SPEC_BEGIN(DMStackCollectionSpecs)

describe(@"with a stack collection", ^{
    
    __block DMStackCollection *stack;
    
    
    beforeEach(^{
        stack = [[DMStackCollection alloc] init];
    });
    
    afterEach(^{
        stack = nil;
    });
    
    context(@"when creating a new collection", ^{
        it(@"the collection should exist", ^{
            [stack shouldNotBeNil];
        });
    });
    
    context(@"pushing an object onto the stack", ^{
        it(@"the stack count should be one", ^{
            [stack push: @"My First Stack Item"];
            [[stack should] haveCountOf: 1];
        });
    });
    
    context(@"popping an object off of the stack", ^{
        
        it(@"the popped object should be the same as pushed", ^{
            NSString *expectedStackItem = @"Our First Stack Item";
            
            [stack push: expectedStackItem];
            
            NSString *actualStackItem = [stack pop];
            
            [[expectedStackItem should] equal:actualStackItem];
            
            [[stack should] beEmpty];
        });
    });
    
       
    context(@"the stack should contain at least 10 concurrent objects", ^{
            const NSUInteger minimumItemCount = 10;
            const NSString *itemFormat = @"Item %lu";
            
            it(@"add minimum number of objects to the stack", ^{
                for (NSUInteger itemCount = 0 ;itemCount < minimumItemCount; itemCount++) {
                    [stack push:[NSString stringWithFormat:(NSString *)itemFormat, (unsigned long)itemCount]];
                }
                [[stack should] haveCountOf: minimumItemCount];
            });
            
            it(@"pop items from the stack", ^{
                
                NSString *objectFromStack;
                NSUInteger itemCount = minimumItemCount;
                
                while ((objectFromStack = [stack pop]) != nil) {
                    itemCount--;
                    
                    NSString *expectedObject = [NSString stringWithFormat:(NSString *)itemFormat, (unsigned long)itemCount];
                    
                    [[expectedObject should] equal: objectFromStack];
                }   
            });
            
            it(@"stack should be empty", ^{
                [[stack should] beEmpty];
                
            });
    });
    
});

SPEC_END
