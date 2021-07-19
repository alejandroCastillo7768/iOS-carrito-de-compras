//
//  Product.swift
//  TestProyect
//
//  Created by Usuario on 15/07/2021.
//

import Foundation
import UIKit


enum Mock {
    
    struct Product {
        var id      : Int?
        var price   : String?
        var title   : String?
        var img     : UIImage?
        var count   : Int = 0
    }
    
    static func getProducts() -> [Product] {
        let products    = [Product(id: 0, price: "160$", title: "Mango Pink", img: #imageLiteral(resourceName: "m_pink")),
                           Product(id: 1, price: "140$", title: "Mango Green", img: #imageLiteral(resourceName: "m_green")),
                           Product(id: 2, price: "110$", title: "Mango Loco", img: #imageLiteral(resourceName: "m_blue")),
                           Product(id: 3, price: "150$", title: "Mango black", img: #imageLiteral(resourceName: "m_black"))
        ]
        
        return products
    }
}
