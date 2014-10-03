#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - BTNSerializable

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if (![[self class] canInitWithDictionary:dictionary]) {
        return nil;
    }
    
    self = [super init];
    
    if (self) {
        [self updateWithRepresentation:dictionary];
    }
    
    return self;
}


- (NSDictionary *)dictionaryRepresentation {
#warning You must return a dictionary representation of the class.
    return nil;
}


+ (BOOL)canInitWithDictionary:(NSDictionary *)dictionary {
#warning You must return whether an instance can be initialized with the passed dictionary.
    
    if (!dictionary || dictionary == (id)[NSNull null] || [dictionary isEqual:@"null"]) {
        return NO;
    }
//    if (!dictionary[<#uniqueIDKey#>]) {
//        return NO;
//    }
    
    return NO;
}


- (void)updateWithRepresentation:(NSDictionary *)dictionary {
    // Update the instance here.
}



#pragma mark - NSObject Extensions

- (NSString *)description {
    return [NSString stringWithFormat:@"%@: %@", NSStringFromClass([self class]), [self dictionaryRepresentation]];
}


- (BOOL)isEqual:(id)object {
#warning You must implement -isEqual:.
//    if (self == object) {
//        return YES;
//    }
//    
//    if (![object isKindOfClass:[self class]]) {
//        return NO;
//    }
//    
//    return [self isEqualTo<#ObjectName#>:object];
}


//- (BOOL)isEqualTo<#ObjectName#>:(<#Class#>object {
#warning You must implement -isEqualTo…:.
//    if (!object) {
//        return NO;
//    }
//    else if (<#condition#>) {
//        
//        return YES;
//    }
//    
//    return NO;
//}


- (NSUInteger)hash {
#warning You must generate a hash for the instance.
//    return [self.<#someObjectProperty#> hash]
//    ^ self.<#someIntegerProperty#> hash]
//    ^ [self.<#anotherObjectProperty#> hash];
}


- (id)copyWithZone:(NSZone *)zone {
    ___FILEBASENAMEASIDENTIFIER___ *copy = [[[self class] alloc] initWithDictionary:[self dictionaryRepresentation]];
    return copy;
}

@end
