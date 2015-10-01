//
//  ModelController.swift
//  Lightweight Generics Example
//
//  Created by Brian Gerstle on 10/1/15.
//  Copyright © 2015 Wikimedia Foundation. All rights reserved.
//

import Foundation

func doSomethingWith(modelController: ModelController) {
    // generic methods
    let index: EmptyIndexProtocol! = modelController.methodReturningIndex()
    print(index)
    let model: EmptyModelProtocol! = modelController.methodReturningModel()
    print(model)

    // generic properties

    // sequence of NSObject
    let allKeys = modelController.models.keys
    print(allKeys)

    // sequence of EmptyModelProtocol
    let models = modelController.models.values
    print(models)
}

func doSomethingWith(modelController: SpecializedModelController) {
    // specialized generic methods
    let index: EmptyIndexProtocol! = modelController.methodReturningIndex()
    print(index)
    let model: EmptyModelProtocol! = modelController.methodReturningModel()
    print(model)

    // specialized generic properties

    // sequence of NSObject
    let allKeys = modelController.models.keys
    print(allKeys)

    // sequence of EmptyModelProtocol 
    let models = modelController.models.values
    print(models)
}
