//
//  Productcard.swift
//  sweater_shop
//
//  Created by Dev Patel on 18/05/24.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager : CartManager
    var product : Product
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            ZStack(alignment:.bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment:.leading){
                    Text("White Sweater")
                        .bold()
                    
                    Text("\(product.price)RS")
                        .font(.caption)
                }
                .padding()
                .frame(width:180,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                cartManager.addtocart(product: product)
            } label:{
                Image(systemName: "plus")
                    .padding(10)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    .padding()
            }
            
        }
    }
}

#Preview {
    ProductCard(product: productList[0])
        .environmentObject(CartManager())
}
