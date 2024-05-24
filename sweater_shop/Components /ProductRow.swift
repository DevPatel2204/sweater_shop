//
//  ProductRow.swift
//  sweater_shop
//
//  Created by Dev Patel on 24/05/24.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManager
    var product:Product
    var body: some View {
        HStack(spacing:20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50)
                .cornerRadius(10)
            
            VStack(alignment:.leading , spacing: 10){
                Text(product.name)
                    .bold()
                
                Text("RS\(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removefromcart(product:product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    ProductRow(product: productList[3])
        .environmentObject(CartManager())
}
