//
//  DMStackCollection.h
//  Pods
//
//  Created by Umang Shah on 4/15/15.
//
//

#import <Foundation/Foundation.h>

@interface DMStackCollection : NSObject
@property (nonatomic, readonly) NSUInteger count;
- (void)push:(id)object;
@end
