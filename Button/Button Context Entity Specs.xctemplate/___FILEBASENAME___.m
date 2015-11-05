#import "Specta.h"
#import "___VARIABLE_classToSpecName____Private.h"
#import "BTNBaseEntity_Private.h"

SpecBegin(___VARIABLE_classToSpecName___)

#warning create your object representations
NSDictionary *dict1 = @{ @"type": @"<#type#>", <#key#>: <#value#> };
NSDictionary *dict2 = @{ @"type": @"<#type#>", <#key#>: <#differentValue#> };

describe(@"Initialization", ^{
    
    it(@"creates an instance from a valid dictionary", ^{
        ___VARIABLE_classToSpecName___ *object = [[___VARIABLE_classToSpecName___ alloc] initWithDictionary:dict1];
#warning compare object's properties are equal to corresponding representation values
    });
    
#warning add any other relevant initialization specs here
});


describe(@"Serialization", ^{
    
    it(@"correctly serializes an <#entity name#>", ^{
        ___VARIABLE_classToSpecName___ *object = [[___VARIABLE_classToSpecName___ alloc] init];
        object.<#property#>  = @"<#some value#>";
        expect([object dictionaryRepresentation]).to.equal(@{ @"type": @"<#type#>",
                                                              @"name": @"<#name#>",
                                                              @"url": [NSURL URLWithString:@"<#url#>"],
                                                              @"<#key#>": @"<#value#>"});
    });
});


#pragma mark - Shared Behaviors

describe(@"___VARIABLE_classToSpecName___", ^{
    
    NSDictionary *data = @{ @"class": [___VARIABLE_classToSpecName___ class],
                            @"type": @"<#type#>",
                            @"rep1": dict1,
                            @"rep2": dict2 };
    
    itBehavesLike(@"BTNSubscriptable", data);
    itBehavesLike(@"BTNBaseEntity", data);
    itBehavesLike(@"BTNModelObject", data);
});

SpecEnd
