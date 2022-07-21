//
//  ContentView.swift
//  Shared
//
//  Created by Sang Yeob Han  on 21/07/2022. xxx
//

import SwiftUI

struct ContentView: View {
    
    var coffeeLists:[CoffeeList] = Coffee.topTen
    
    var body: some View {
        NavigationView{
            List(coffeeLists, id:\.id){ CoffeeList in
            
                NavigationLink(
                    destination: CoffeeCard(coffee:CoffeeList),label:{
                        HStack{
                        
                            Image(CoffeeList.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 100)
                                .cornerRadius(10)
                                .padding(.vertical,5)
                            
                            VStack{
                                Text(CoffeeList.title)
                                    .fontWeight(.semibold)
                                Text(CoffeeList.uploadedDate)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    )}
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


