#import "Specta.h"
___IMPORTHEADER_subjectClassName___

SpecBegin(___VARIABLE_subjectClassName:identifier___)

#warning create your object representations
NSDictionary *representation  = @{ <#key#>: <#value#> };
NSDictionary *representation2 = @{ <#key#>: <#differentValue#> };


#pragma mark - Initialization

describe(@"Initialization", ^{
    
    it(@"should create an instance from a valid dictionary", ^{
        ___VARIABLE_subjectClassName:identifier___ *object = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
#warning compare object's properties are equal to corresponding representation values
    });
    
    it(@"should not create an instance from an invalid dictionary", ^{
        ___VARIABLE_subjectClassName:identifier___ *object = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:@{ @"invalidKey": @1234 }];
        expect(object).to.beNil();
    });
    
    it(@"should not create an instance from an empty dictionary", ^{
        ___VARIABLE_subjectClassName:identifier___ *object = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:@{}];
        expect(object).to.beNil();
    });
    
    it(@"should not create an instance from an nil dictionary", ^{
        ___VARIABLE_subjectClassName:identifier___ *object = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:nil];
        expect(object).to.beNil();
    });
    
#warning add any other relevant initialization specs here
});


#pragma mark - NSObject Extentions

describe(@"Equality", ^{
    
    it(@"should consider two identical ___VARIABLE_subjectClassName:identifier___ instances equal", ^{
        ___VARIABLE_subjectClassName:identifier___ *object1 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        ___VARIABLE_subjectClassName:identifier___ *object2 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        expect([object1 isEqual:object2]).to.beTruthy();
    });
    
    it(@"should consider two identical ___VARIABLE_subjectClassName:identifier___ instances hash values to be equal", ^{
        ___VARIABLE_subjectClassName:identifier___ *object1 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        ___VARIABLE_subjectClassName:identifier___ *object2 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        expect([object1 hash]).to.equal([object2 hash]);
    });
    
    it(@"should consider two different ___VARIABLE_subjectClassName:identifier___ instances to be inequal", ^{
        ___VARIABLE_subjectClassName:identifier___ *object1 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        ___VARIABLE_subjectClassName:identifier___ *object2 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation2];
        expect([object1 isEqual:object2]).to.beFalsy();
    });
    
    it(@"should consider nil to be different to a valid ___VARIABLE_subjectClassName:identifier___ instance", ^{
        ___VARIABLE_subjectClassName:identifier___ *object = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        expect([object isEqual:nil]).to.beFalsy();
    });
    
    it(@"should consider an empty ___VARIABLE_subjectClassName:identifier___ instance to be different to a valid ___VARIABLE_subjectClassName:identifier___ instance", ^{
        ___VARIABLE_subjectClassName:identifier___ *object1 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        ___VARIABLE_subjectClassName:identifier___ *object2 = [[___VARIABLE_subjectClassName:identifier___ alloc] init];
        expect([object1 isEqual:object2]).to.beFalsy();
    });
    
    it(@"should consider two empty ___VARIABLE_subjectClassName:identifier___ instances to be equal", ^{
        ___VARIABLE_subjectClassName:identifier___ *object1 = [[___VARIABLE_subjectClassName:identifier___ alloc] init];
        ___VARIABLE_subjectClassName:identifier___ *object2 = [[___VARIABLE_subjectClassName:identifier___ alloc] init];
        expect([object1 isEqual:object2]).to.beTruthy();
    });
});


describe(@"Serialization", ^{
    
    it(@"Serialization and deserialization should be complete & symmetrical", ^{
        ___VARIABLE_subjectClassName:identifier___ *object = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        NSDictionary *dictionary = [object dictionaryRepresentation];
        expect(dictionary).to.equal(representation);
    });
});


describe(@"Copying", ^{
    
    it(@"should create a valid copy of a ___VARIABLE_subjectClassName:identifier___ instance", ^{
        ___VARIABLE_subjectClassName:identifier___ *object1 = [[___VARIABLE_subjectClassName:identifier___ alloc] initWithDictionary:representation];
        ___VARIABLE_subjectClassName:identifier___ *object2 = [object1 copy];
        expect([object1 isEqual:object2]).to.beTruthy();
    });
});

SpecEnd
