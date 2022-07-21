//
//  List.swift
//  tut4
//
//  Created by Sang Yeob Han  on 21/07/2022.
//

import Foundation


struct CoffeeList:Identifiable{
    let id = UUID()
    let imageName:String
    let title: String
    let description: String
    let uploadedDate: String
}


struct Coffee{
    static let topTen = [
    CoffeeList(
        imageName: "americano",
         title: "Americano",
         description: "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. Its strength varies with the number of shots of espresso and amount of water added.",
         uploadedDate: "Jan 1,2021"
    ),
    CoffeeList(
        imageName: "cold-brew",
        title: "Cold Brew",
        description: "Cold brew is simply coffee that has been brewed with cold rather than hot water and usually involves a long steeping process—anywhere between 12-24 hours. ",
        uploadedDate: "Jan 2,2022"),
    CoffeeList(
        imageName: "latte",
        title: "Latte",
        description: "Caffè latte, often shortened to just latte in English, is a coffee beverage of Italian origin made with espresso and steamed milk. ",
        uploadedDate: "Jan 3,2022"),
    
    ]
    
    
}
