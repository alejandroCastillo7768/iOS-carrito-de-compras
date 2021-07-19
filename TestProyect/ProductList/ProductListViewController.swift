//
//  ProductListViewController.swift
//  TestProyect
//
//  Created by Usuario on 15/07/2021.
//

import UIKit

class ProductListViewController: UIViewController {
    
    @IBOutlet weak var tableView        : UITableView!
    
    var resume   : [Mock.Product] = []
    
    var products = Mock.getProducts()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        title      = ""
        let image  = UIImage(named: "carrito-de-compras")!
        let button = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItem = button
    }
}

extension ProductListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProductTableViewCell.identifier, for: indexPath) as! ProductTableViewCell
        cell.delegate = self
        cell.setupCell(with: products[indexPath.row])
        
        return cell
    }
    
    
    private func setupTableView() {
        tableView.dataSource        = self
        tableView.delegate          = self
        
        tableView.register(ProductTableViewCell.getNib(), forCellReuseIdentifier: ProductTableViewCell.identifier)
        
        tableView.reloadData()
    }
}
#warning("PRODUCT VC - TO DO")

// -MARK: PRODUCT VC -
extension ProductListViewController: ProductSelectionDelegate {
    
    func didTapPlusProduct(product: Mock.Product) {
        guard let id = product.id else { return }
        
        resume.append(product)
        print("total: ", resume.count)
        
//        product.count = product.count + 1
        if products[id].id == product.id {
            products[id].count += 1
        }
        
        tableView.reloadData()
    }
    
    
    func didTapMinusProduct(product: Mock.Product) {
        print(resume.count)
    }
}
