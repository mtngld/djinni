// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from derivings.djinni

#import "DBRecordWithDerivings.h"


@implementation DBRecordWithDerivings

- (nonnull instancetype)initWithKey1:(int32_t)key1
                                key2:(nonnull NSString *)key2
{
    if (self = [super init]) {
        _key1 = key1;
        _key2 = [key2 copy];
    }
    return self;
}

+ (nonnull instancetype)recordWithDerivingsWithKey1:(int32_t)key1
                                               key2:(nonnull NSString *)key2
{
    return [[self alloc] initWithKey1:key1
                                 key2:key2];
}

- (BOOL)isEqual:(id)other
{
    if (![other isKindOfClass:[DBRecordWithDerivings class]]) {
        return NO;
    }
    DBRecordWithDerivings *typedOther = (DBRecordWithDerivings *)other;
    return self.key1 == typedOther.key1 &&
            [self.key2 isEqualToString:typedOther.key2];
}

- (NSUInteger)hash
{
    return NSStringFromClass([self class]).hash ^
            (NSUInteger)self.key1 ^
            self.key2.hash;
}

- (NSComparisonResult)compare:(DBRecordWithDerivings *)other
{
    NSComparisonResult tempResult;
    if (self.key1 < other.key1) {
        tempResult = NSOrderedAscending;
    } else if (self.key1 > other.key1) {
        tempResult = NSOrderedDescending;
    } else {
        tempResult = NSOrderedSame;
    }
    if (tempResult != NSOrderedSame) {
        return tempResult;
    }
    tempResult = [self.key2 compare:other.key2];
    if (tempResult != NSOrderedSame) {
        return tempResult;
    }
    return NSOrderedSame;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p key1:%@ key2:%@>", self.class, self, @(self.key1), self.key2];
}

@end
