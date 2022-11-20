//
//  ItemListCoffeeshop.swift
//  coffeshop
//
//  Created by Garfianto Dwi Cahyadi on 20/11/22.
//

import SwiftUI

struct ItemListCoffeeshop: View {
    //mark properties
    let coffeshop : Coffeeshop
    
    //mark body
    var body: some View {
        NavigationLink(destination: CoffeShopDetailView(coffeshop: coffeshop)) {
            HStack(alignment: VerticalAlignment.top,spacing: 20) {
                Image(coffeshop.image)
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(20)
                    
                    
                VStack(alignment: HorizontalAlignment.leading, spacing: 10){
                    Text(coffeshop.name)
                        .font(.system(size: 24, design: .rounded))
                            .bold()
                    Text(coffeshop.location)
                        .font(.system(size: 20, weight: .light, design: .rounded))
                        .foregroundColor(.gray)
                            .bold()
                    Text("Rating 4/5")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }//VSTACK
                
            }
        }//HSTACK
    }
}

struct ItemListCoffeeshop_Previews: PreviewProvider {
    static var previews: some View {
        ItemListCoffeeshop(coffeshop:  Coffeeshop(image: "bojaeatery", name: "Boja Eatery hahaha ajkdsjfajf ajfjfkaja ", location: "Jl. Sumatera No. 21, Kota Bandung", review: "The food is delicious, cooked just right.  Friendly service.  Cozy atmosphere with floral decorations.  There is a ~robot~ that sends the dish.  Prices are reasonable for a restaurant of its class"))
    }
}
