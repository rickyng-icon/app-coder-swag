//
//  DataService.swift
//  coder-swag
//
//  Created by Ng Ricky on 18/8/2017.
//  Copyright © 2017 ICON. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Hat White", price: "$23", imageName: "hat03.png"),
        Product(title: "Snapback", price: "$18", imageName: "hat04.png")
    ]

    private let hoodies = [
        Product(title: "Graphic Beanie hoodie", price: "$19", imageName: "hoodie01.png"),
        Product(title: "Hat Black hoodie", price: "$21", imageName: "hoodie02.png"),
        Product(title: "Hat White hoodie", price: "$23", imageName: "hoodie03.png"),
        Product(title: "Hat Black hoodie", price: "$26", imageName: "hoodie03.png"),
        Product(title: "Snapback hoodie", price: "$14", imageName: "hoodie04.png")
    ]

    private let shirts = [
        Product(title: "Graphic Beanie shirt", price: "$28", imageName: "shirt01.png"),
        Product(title: "Hat Black shirt", price: "$22", imageName: "shirt02.png"),
        Product(title: "Hat White shirt", price: "$31", imageName: "shirt03.png"),
        Product(title: "Snapback shirt", price: "$19", imageName: "shirt04.png")
    ]

    private let digital = [
        Product(title: "Graphic Beanie digital", price: "$28", imageName: "digital01.png"),
        Product(title: "Hat Black digital", price: "$22", imageName: "digital02.png"),
        Product(title: "Hat White digital", price: "$31", imageName: "digital03.png"),
        Product(title: "Snapback digital", price: "$19", imageName: "digital04.png")
    ]

    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
       return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }

    func getShirts() -> [Product] {
        return shirts
    }

    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }

}
