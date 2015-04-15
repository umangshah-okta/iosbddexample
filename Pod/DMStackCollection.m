//
//  DMStackCollection.m
//  Pods
//
//  Created by Umang Shah on 4/15/15.
//
//

#import "DMStackCollection.h"

@interface DMStackCollection ()
@property (nonatomic, strong) NSMutableArray *list;
@end


@implementation DMStackCollection
- (instancetype)init {
    self = [super init];
    if (self) {
        self.list = [NSMutableArray array];
    }
    return self;
}

- (NSUInteger)count {
    return self.list.count;
}

- (void)push:(id)object {
    [self.list addObject:object];
}

- (id)pop {
    id returnObject = nil;
    if (self.list.count > 0) {
        returnObject = self.list[self.list.count - 1];
        [self.list removeObjectAtIndex:self.list.count - 1];
    }
    return returnObject;
}
@end
