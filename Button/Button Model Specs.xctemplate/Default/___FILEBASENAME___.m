#import "Specta.h"
#import "___FILEBASENAME___.h"

SpecBegin(___FILEBASENAMEASIDENTIFIER___)

#warning create your object representations
NSDictionary *representation  = @{ <#key#>: <#value#> };
NSDictionary *representation2 = @{ <#key#>: <#differentValue#> };


#pragma mark - Initialization

describe(@"Initialization", ^{
    
    it(@"should create an instance from a valid dictionary", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
#warning compare object's properties are equal to corresponding representation values
    });
    
    it(@"should not create an instance from an invalid dictionary", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:@{ @"invalidKey": @1234 }];
        expect(object).to.beNil();
    });
    
    it(@"should not create an instance from an empty dictionary", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:@{}];
        expect(object).to.beNil();
    });
    
    it(@"should not create an instance from an nil dictionary", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:nil];
        expect(object).to.beNil();
    });
    
#warning add any other relevant initialization specs here
});


#pragma mark - NSObject Extentions

describe(@"Equality", ^{
    
    it(@"should consider two identical ___FILEBASENAMEASIDENTIFIER___ instances equal", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object1 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        ___FILEBASENAMEASIDENTIFIER___ *object2 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        expect([object1 isEqual:object2]).to.beTruthy();
    });
    
    it(@"should consider two identical ___FILEBASENAMEASIDENTIFIER___ instances hash values to be equal", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object1 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        ___FILEBASENAMEASIDENTIFIER___ *object2 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        expect([object1 hash]).to.equal([object2 hash]);
    });
    
    it(@"should consider two different ___FILEBASENAMEASIDENTIFIER___ instances to be inequal", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object1 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        ___FILEBASENAMEASIDENTIFIER___ *object2 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation2];
        expect([object1 isEqual:object2]).to.beFalsy();
    });
    
    it(@"should consider nil to be different to a valid ___FILEBASENAMEASIDENTIFIER___ instance", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        expect([object isEqual:nil]).to.beFalsy();
    });
    
    it(@"should consider an empty ___FILEBASENAMEASIDENTIFIER___ instance to be different to a valid ___FILEBASENAMEASIDENTIFIER___ instance", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object1 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        ___FILEBASENAMEASIDENTIFIER___ *object2 = [[___FILEBASENAMEASIDENTIFIER___ alloc] init];
        expect([object1 isEqual:object2]).to.beFalsy();
    });
    
    it(@"should consider two empty ___FILEBASENAMEASIDENTIFIER___ instances to be equal", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object1 = [[___FILEBASENAMEASIDENTIFIER___ alloc] init];
        ___FILEBASENAMEASIDENTIFIER___ *object2 = [[___FILEBASENAMEASIDENTIFIER___ alloc] init];
        expect([object1 isEqual:object2]).to.beTruthy();
    });
});


describe(@"Serialization", ^{
    
    it(@"Serialization and deserialization should be complete & symmetrical", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        NSDictionary *dictionary = [object dictionaryRepresentation];
        expect(dictionary).to.equal(representation);
    });
});


describe(@"Copying", ^{
    
    it(@"should create a valid copy of a ___FILEBASENAMEASIDENTIFIER___ instance", ^{
        ___FILEBASENAMEASIDENTIFIER___ *object1 = [[___FILEBASENAMEASIDENTIFIER___ alloc] initWithDictionary:representation];
        ___FILEBASENAMEASIDENTIFIER___ *object2 = [object1 copy];
        expect([object1 isEqual:object2]).to.beTruthy();
    });
});

SpecEnd
