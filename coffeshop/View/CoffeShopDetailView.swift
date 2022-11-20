//
//  CoffeShopDetailView.swift
//  coffeshop
//
//  Created by Garfianto Dwi Cahyadi on 19/11/22.
//

import SwiftUI

struct CoffeShopDetailView: View {
    //mark properties
    let coffeshop: Coffeeshop
    fileprivate func ImageDetail() -> some View {
        return Image(coffeshop.image)
            .resizable()
            .scaledToFill()
            .frame(width: 300,height: 300)
            .clipShape(Circle())
            .overlay {
                ZStack {
                    Circle()
                        .opacity(0.5)
                    VStack {
                        Image(systemName: "person.crop.circle.badge.plus")
                        Text(coffeshop.name)
                    }
                    .foregroundColor(.white)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                }
            }
    }
    
    var body: some View {
        
       
        //mark body
        ZStack {
            LinearGradient(colors: [.blue, .mint, .mint], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20, content: {
                
                ImageDetail()
                Text(coffeshop.review)
                    .foregroundColor(.black)
                
                Text(coffeshop.location)
                    .multilineTextAlignment(.center)
                    .lineSpacing(6)
                    .foregroundColor(.purple)
                    .fontWeight(.bold)
            })
            .multilineTextAlignment(.center)
            .padding(.horizontal)
        }
    }
}

struct CoffeShopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeShopDetailView(coffeshop: Coffeeshop(image: "bojaeatery", name: "Boja Eatery", location: "Jl. Sumatera No. 21, Kota Bandung", review: "The food is delicious, cooked just right.  Friendly service.  Cozy atmosphere with floral decorations.  There is a ~robot~ that sends the dish.  Prices are reasonable for a restaurant of its class"))
    }
}
