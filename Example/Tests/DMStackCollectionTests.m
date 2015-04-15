//
//  DMStackCollectionTests.m
//  okta-ios-utils
//
//  Created by Umang Shah on 4/15/15.
//  Copyright (c) 2015 Chandra Shirashyad. All rights reserved.
//

Story: Stack Collection


In order to represent a collection of objects that operate as a stack
as a developer
I want to push objects onto the stack
and pop objects off the stack
and peek at the topmost object on the stack without affecting the stack
and the stack must handle at least 10 concurrent objects


Scenario 1: Create a stack collection
Given a class representing a stack collection
When I create a new stack
Then the stack should exist


Scenario 2: Push an object onto the stack
Given a newly created stack
When I push an object
Then the stack should contain one object


Scenario 3: Pop an object off the stack
Given  a newly created stack
And I push an object onto the stack
When I pop the object off the stack
Then the object should match the object I pushed onto the stack


Scenario 4: Peek at the topmost object on the stack
Given a stack with one object
When I peek at the topmost object on the stack
Then the stack should contain one object


Scenario 5: The stack should handle at least 10 concurrent objects
Given a newly created stack
When I push 12 objects onto the stack
and I pop 12 objects off the stack
Then the objects should be identical to those pushed in last in, first out order
And the stack should no longer contain objects
