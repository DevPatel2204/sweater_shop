//
//  Product.swift
//  sweater_shop
//
//  Created by Dev Patel on 17/05/24.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var price : Int
}

var productList = [Product(name: "White Swaeter", image: "sweater1 ", price: 800),
                   Product(name: "Light White Swaeter", image: "sweater2 ", price: 1000),
                   Product(name: "Blue Swaeter", image: "sweater3 ", price: 500),
                   Product(name: "Light Blue Swaeter", image: "sweater4 ", price: 800),
                   Product(name: "Sunshine Swaeter", image: "sweater5 ", price: 900),
                   Product(name: "Dark Blue Swaeter", image: "sweater6 ", price: 600),
                   Product(name: "Brown Swaeter", image: "sweater7 ", price: 900),
                   Product(name: "Black Swaeter", image: "sweater8 ", price: 1000),
]
