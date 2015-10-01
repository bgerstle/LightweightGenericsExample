//
//  DictionaryWrapper.m
//  Lightweight Generics Example
//
//  Created by Brian Gerstle on 10/1/15.
//  Copyright © 2015 Wikimedia Foundation. All rights reserved.
//

#import "ModelController.h"

@implementation ModelController

- (id)methodReturningIndex {
    return self.models.allKeys.firstObject;
}

- (id)methodReturningModel {
    return self.models.allValues.firstObject;
}

@end

@implementation Model

@end

@implementation SpecializedModelController

@end
