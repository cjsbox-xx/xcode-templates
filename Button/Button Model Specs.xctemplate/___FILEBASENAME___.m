#import "Specta.h"
#import "___VARIABLE_classToSpecName____Private.h"

SpecBegin(___VARIABLE_classToSpecName___)

#warning create your object representations
NSDictionary *dict1 = @{ <#key#>: <#value#> };
NSDictionary *dict2 = @{ <#key#>: <#differentValue#> };


#pragma mark - Initialization

describe(@"Initialization", ^{
    
    it(@"should create an instance from a valid dictionary", ^{
        ___VARIABLE_classToSpecName___ *object = [[___VARIABLE_classToSpecName___ alloc] initWithDictionary:representation];
#warning compare object's properties are equal to corresponding representation values
    });
    
#warning add any other relevant initialization specs here
});


#pragma mark - BTNModelObject

describe(@"___VARIABLE_classToSpecName___", ^{
    
    // Covers initialization with invalid, nil, and empty dictionary
    // as well as instance equality, serialization, and copying.
    
    itBehavesLike(@"BTNModelObject", @{ @"class": [___VARIABLE_classToSpecName___ class],
                                        @"rep1": dict1,
                                        @"rep2": dict2 });
});

SpecEnd
