//
//  Tree.swift
//  Console Swift
//
//  Created by Miguel Jimenez on 2/3/18.
//  Copyright © 2018 Miguel Jimenez. All rights reserved.
//

import Foundation

class Node<T> {
    var value : T
    
    init(value : T) {
        self.value = value
    }
    
    var children : [Node] = [ ]
    weak var parent : Node?
    
    func add(child : Node) {
        children.append(child)
        child.parent = self
    }
}
extension Node where T: Equatable {
    // 1
    func search(value: T) -> Node? {
        // 2
        if value == self.value {
            return self
        }
        // 3
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        // 4
        return nil
    }
}

extension Node: CustomStringConvertible {
    // 2
    var description: String {
        // 3
        var text = "\(value)"
        
        // 4
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
        }
        return text
    }
}

