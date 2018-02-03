//
//  Tree.swift
//  Console Swift
//
//  Created by Miguel Jimenez on 2/3/18.
//  Copyright © 2018 Miguel Jimenez. All rights reserved.
//

import Foundation

class Node {
    var value : String
    
    init(value : String) {
        self.value = value
    }
    
    var children : [Node] = [ ]
    weak var parent : Node?
    
    func add(child : Node) {
        children.append(child)
        child.parent = self
    }
}


