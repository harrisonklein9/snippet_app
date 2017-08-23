//
//  SnippetData.swift
//  snippet_app
//
//  Created by Harrison Klein on 8/20/17.
//  Copyright © 2017 Harrison Klein. All rights reserved.
//

import Foundation

enum SnippetType: String {
    case text = "Text"
    case photo = "Photo"
}

class SnippetData {
    let type: SnippetType
    
    init ( snippetType: SnippetType) {
        type = snippetType
        print ("\(type.rawValue) snippet created")
    }
}

class TextData: SnippetData {
    let textData: String
    
    init( text: String) {
        textData = text
        super.init(snippetType: .text)
        print ("Text snippet data: \(textData)")
    }
}


//currently on page 169 
