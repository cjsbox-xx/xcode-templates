#import "___FILEBASENAME____Private.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - BTNSerializable

+ (BOOL)canInitWithDictionary:(NSDictionary *)dictionary {
#warning You must return whether an instance can be initialized with the passed
    return [super canInitWithDictionary:dictionary];
}


- (void)updateWithRepresentation:(NSDictionary *)dictionary {
    // Update the instance here.
}


- (NSDictionary *)dictionaryRepresentation {
#warning You must return a dictionary representation of the class.
    return nil;
}


#pragma mark - NSObject

- (BOOL)isEqualTo<# object #>:(___FILEBASENAMEASIDENTIFIER___ *)<#paramName#> {
    return [self isEqual:<#paramName#>];
}


#pragma mark - ___FILEBASENAMEASIDENTIFIER___

<# custom implementation here #>


@end
