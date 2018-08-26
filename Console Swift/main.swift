//
//  main.swift
//  Console Swift
//
//  Created by Miguel Jimenez on 2/3/18.
//  Copyright © 2018 Miguel Jimenez. All rights reserved.
//

import Foundation

let root = Node(value : "root")
let node1 = Node(value: "node 1")
let node2 = Node(value : "node 2")
root.add(child: node1)
root.add(child: node2)
node1.add(child: Node.init(value: "Hello"))
node1.add(child: Node.init(value: "How are you"))
print(root)


