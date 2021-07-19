//
//  ProductTableViewCell.swift
//  TestProyect
//
//  Created by Usuario on 15/07/2021.
//

import UIKit

protocol ProductSelectionDelegate: class {
    func didTapPlusProduct(product: Mock.Product)
    
    func didTapMinusProduct(product: Mock.Product)
}

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel   : UILabel!
    @IBOutlet weak var priceLabel   : UILabel!
    @IBOutlet weak var img          : UIImageView!
    
    @IBOutlet weak var plus         : UIButton!
    @IBOutlet weak var minus        : UIButton!
    
    @IBOutlet weak var count        : UILabel!
    
    var product                     = Mock.Product() 
    
    weak var delegate               : ProductSelectionDelegate?
    
    static let identifier = "ProductTableViewCell"
    
    static func getNib() -> UINib {
        return UINib(nibName: "ProductTableViewCell", bundle: nil)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
    func setupCell(with product: Mock.Product) {
        titleLabel.text     = product.title
        priceLabel.text     = product.price
        img.image           = product.img
        
        self.product = product
        
        if product.count == 0 {
//            count.text = "0"
            minus.isHidden = true
        }
        else {
            count.text = "\(product.count)"
            minus.isHidden = false
        }
    }
    
    
    @IBAction func didTapPlusButton(_ sender: UIButton) {
        delegate?.didTapPlusProduct(product: product)
    }
    
    @IBAction func didTapMinusButton(_ sender: UIButton) {
        delegate?.didTapMinusProduct(product: product)
    }
}
