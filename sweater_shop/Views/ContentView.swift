//
//  ContentView.swift
//  sweater_shop
//
//  Created by Dev Patel on 17/05/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartmanager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns :columns,spacing:20) {
                    ForEach(productList,id:\.id){
                        product in ProductCard(product:  product)
                            .environmentObject(cartmanager)
                    }
                    
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartmanager)
                }label: {
                    CartButton(numberOfProducts: cartmanager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
