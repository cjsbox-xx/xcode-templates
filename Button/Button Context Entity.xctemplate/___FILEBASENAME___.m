#import "___FILEBASENAME____Private.h"
#import "BTNBaseEntity_Private.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Getters

- (<#class#>)<#property#> {
    return [self valueForKey:<#key#> ifClass:<#class#>];
}


#pragma mark - Setters

- (void)set<#Property#>:(<#class#>)<#property#> {
    self[BTNContext<#Specifier#>Key] = <#property#>;
}


#pragma mark - BTNSerializable

- (void)updateWithRepresentation:(NSDictionary *)dictionary {
    [super updateWithRepresentation:dictionary];
    [self.mutableContext addEntriesFromDictionary:dictionary];
}


- (NSDictionary *)dictionaryRepresentation {
    self.mutableContext[BTNContextTypeKey] = @"<#type#>";
    return [self.mutableContext BTN_JSONSerlized];
}


#pragma mark - NSObject

- (BOOL)isEqualTo<# object #>:(___FILEBASENAMEASIDENTIFIER___ *)object {
    return [self isEqual:object];
}

@end
