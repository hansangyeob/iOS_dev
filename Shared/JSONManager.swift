//
//  JSONManager.swift
//  tut4
//
//  Created by Sang Yeob Han  on 28/07/2022.
//

import Foundation

import SwiftUI

var CoffeeListJsonFileName = "CoffeeListJSON.json"

struct CoffeeStruct: Codable{
    var imageName :String
    var title: String
    var description: String
    var updatedDate: String
}

func decodeJsonFromJsonFile(jsonFileName:String) ->[CoffeeStruct]{
    if let file = Bundle.main.url(forResource:jsonFileName,withExtension:nil){
        if let data = try? Data(contentsOf: file){
            do{
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([CoffeeStruct].self,from:data)
                return decoded
            }catch let error{
                fatalError("Failed to decode JSON:\(error)")
            }
        }
    }else{
        fatalError("Failed to decode \(jsonFileName) file. ")
    }
    return [] as [CoffeeStruct]
}


var decodedCoffeeList = decodeJsonFromJsonFile(jsonFileName: CoffeeListJsonFileName)

struct JSONManager: View {
    var body: some View {
        Button("button"){
            
        }
    }
}

struct JSONManager_Previews: PreviewProvider {
    static var previews: some View {
        JSONManager()
    }
}




//"imageName": "americano",
// "title": "Americano",
// "description": "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee. Its strength varies with the number of shots of espresso and amount of water added.",
// "uploadedDate": "Jan 1,2021"
