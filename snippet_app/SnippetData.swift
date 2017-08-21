//
//  SnippetData.swift
//  snippet_app
//
//  Created by Harrison Klein on 8/20/17.
//  Copyright © 2017 Harrison Klein. All rights reserved.
//

import Foundation

class SnippetData {
    
    let type: SnippetType
    
    init (snippetType: SnippetType) {
        type = snippetType
        print ("hi snippet created")
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


enum SnippetType: String {
    case text = "Text"
    case photo = "Photo"
}


//currently on page 169 
