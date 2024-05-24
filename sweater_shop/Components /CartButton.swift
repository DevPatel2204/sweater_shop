//
//  CardButton.swift
//  sweater_shop
//
//  Created by Dev Patel on 18/05/24.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment:.topTrailing){
            Image(systemName: "cart")
                .font(.system(size:20))
                .padding(.top,5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundStyle(.white)
                    .frame(width:15,height:15)
                    .background(.red)
                    .cornerRadius(50)
                
            }
        }
        
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
