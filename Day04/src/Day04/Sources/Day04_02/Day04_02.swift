//
//  File.swift
//  
//
//  Created by Artour Ilyasov on 17.03.2023.
//

import Foundation
import ObjCModule

@main
public struct Day04_02 {
    public static func main() {
        print("""
              Choose barista:\n
              1. Man\n
              2. Machine\n
              """)
        
        
    }
}


class BaristaMachine {
    let modelName: String = ""
    
    func brew() {
        print("Coffee is brewing. 1 minute - time left")
        print("Coffee is ready!")
    }
    
    
    init(coffee: Coffee) {}
}
