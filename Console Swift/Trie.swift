//
//  Trie.swift
//  Console Swift
//
//  Created by Miguel Jimenez on 2/3/18.
//  Copyright © 2018 Miguel Jimenez. All rights reserved.
//

import Foundation


class TrieNode <T : Hashable> {
    var value : T?
    weak var parent : TrieNode?
    var children : [T : TrieNode] = [:]
    
    init(value : T? = nil , parent  : TrieNode? = nil) {
        self.value = value
        self.parent = parent
    }
    
    func add(child : T) {
        guard children[child] == nil else {return}
        children[child] = TrieNode(value: child, parent: self)
    }
}


class Trie {
    
    typealias Node = TrieNode<Character>
    
    fileprivate let root : TrieNode<Character>
    
    init() {
        root = TrieNode<Character>()
    }
}

extension Trie {
    
    func insert(word: String) {
        guard !word.isEmpty else {return}
        
        var currentNode = root
        let characters = Array(word.lowercased())
        var currentIndex = 0
    }
    
}



