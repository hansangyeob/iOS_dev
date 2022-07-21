//
//  CoffeeCard.swift
//  tut4
//
//  Created by Sang Yeob Han  on 21/07/2022.
//

import SwiftUI

struct CoffeeCard: View {
    
    var coffee:CoffeeList
    
    var body: some View {
        VStack{
            Image(coffee.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .cornerRadius(12)
            
            Text(coffee.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            
            HStack(spacing:40){
                Text(coffee.uploadedDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(coffee.description)
                .font(.body)
                .padding()
        
            }
        }
    

    }


struct CoffeeCard_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeCard(coffee: Coffee.topTen.first!)
    }
}
