//
//  CartManager.swift
//  sweater_shop
//
//  Created by Dev Patel on 24/05/24.
//

import Foundation

class CartManager : ObservableObject{
    @Published private (set) var products:[Product] = []
    @Published private (set) var total : Int = 0
    
    func addtocart(product:Product){
        products.append(product)
        total += product.price
    }
    
    func removefromcart(product:Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
