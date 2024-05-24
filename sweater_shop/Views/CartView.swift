//
//  CartView.swift
//  sweater_shop
//
//  Created by Dev Patel on 18/05/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count>0{
                ForEach(cartManager.products,id: \.id){
                    product in
                    ProductRow(product: product)
                }
                
                HStack{
                    Text("Your cart total is ")
                    Spacer()
                    Text("RS\(cartManager.total).00")
                        .bold()
                }
                .padding()
            }else{
                Text("Your Cart is Empty")
            }
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
        
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
    
}
