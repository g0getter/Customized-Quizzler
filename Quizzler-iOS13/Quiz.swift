//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by 여나경 on 2022/02/28.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct Quiz {
    var title: String
    var answer: String
    
    init(q: String, a: String) {
        self.title = q
        self.answer = a
    }
}
