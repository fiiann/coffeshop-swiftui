//
//  CoffeShopListView.swift
//  coffeshop
//
//  Created by Garfianto Dwi Cahyadi on 19/11/22.
//

import SwiftUI


struct CoffeShopListView: View {
    //MARK PROPERTIES
    @State private var searchText : String = ""
    private var coffeeShopList: [Coffeeshop]{
        var coffeeShopList = Coffeeshop.CoffeeshopProvider.all()

        if(!searchText.isEmpty){
            return coffeeShopList.filter{
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
        return coffeeShopList
    }
    
    private var suggestedCoffeeShop: [Coffeeshop]{
        if(!searchText.isEmpty){
            return coffeeShopList
        }
        return []
    }
    
    
    //MARK: BODY
    
    var body: some View {
        NavigationStack{
            List(coffeeShopList){
                item in
                 ItemListCoffeeshop(coffeshop: item)
            }//LIST
            .navigationTitle("Coffeeshop")
            
            .listStyle(GroupedListStyle())
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Search Coffeeshop"
            ){
                ForEach(suggestedCoffeeShop) { shop in
                    Text("Looking for \(shop.name)").searchCompletion(shop.name)
                }
            }
        }//NAVIGATION STACK
    }
}

struct CoffeShopListView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeShopListView()
    }
}
