//
//  DictionaryWrapper.h
//  Lightweight Generics Example
//
//  Created by Brian Gerstle on 10/1/15.
//  Copyright © 2015 Wikimedia Foundation. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EmptyModelProtocol <NSObject>

@end

@protocol EmptyIndexProtocol <NSObject>

@end

@interface ModelController <Model : id<EmptyModelProtocol>, Index : id<EmptyIndexProtocol>> : NSObject

@property (nonatomic, strong) NSDictionary<Index, Model>* models;

- (Index)methodReturningIndex;

- (Model)methodReturningModel;

@end

@interface Model : NSObject <EmptyModelProtocol>

@end

@interface NSString (EmptyIndexProtocol)
<EmptyIndexProtocol>

@end

@interface SpecializedModelController : ModelController<Model*, NSString*>

@end
