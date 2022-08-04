//
//  ContentView.swift
//  Shared
//
//  Created by Sang Yeob Han  on 21/07/2022. xxx
//

import SwiftUI

struct ContentView: View {
    var CoffeeShopBrands: [CoffeeShopBrand] = CoffeeShopBrand.allCoffeeBrand
    
    var body: some View {
        NavigationView{
            List{
                ForEach(CoffeeShopBrands, id: \.founderYear ){
                    CoffeeShopBrand in
                    Text("\(CoffeeShopBrand.founderYear)")
                }
            }
        }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





