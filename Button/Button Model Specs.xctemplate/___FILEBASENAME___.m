#import "___VARIABLE_classToSpecName___+Fixture.h"

SpecBegin(___VARIABLE_classToSpecName___)

context(@"___VARIABLE_classToSpecName___", ^{
    
#pragma mark - Initialization
    
    describe(@"Initialization", ^{
        
        it(@"creates an instance from a valid dictionary", ^{
            ___VARIABLE_classToSpecName___ *object = [[___VARIABLE_classToSpecName___ alloc] initWithDictionary:[___VARIABLE_classToSpecName___ dict1]];
        });
    });
    
    
#pragma mark - BTNModelObject
    
    describe(@"___VARIABLE_classToSpecName___", ^{
        
        // Covers initialization with invalid, nil, and empty dictionary
        // as well as instance equality, serialization, and copying.
        
        itBehavesLike(@"BTNModelObject", @{ @"class": [___VARIABLE_classToSpecName___ class],
                                            @"rep1": [___VARIABLE_classToSpecName___ dict1],
                                            @"rep2": [___VARIABLE_classToSpecName___ dict2] });
    });
});

SpecEnd
