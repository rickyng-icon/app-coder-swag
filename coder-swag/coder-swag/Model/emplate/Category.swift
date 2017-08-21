//
//  Category.swift
//  coder-swag
//
//  Created by Ng Ricky on 18/8/2017.
//  Copyright © 2017 ICON. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
