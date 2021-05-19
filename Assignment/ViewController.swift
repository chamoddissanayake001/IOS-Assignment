//
//  ViewController.swift
//  Assignment
//
//  Created by user164640 on 5/19/21.
//  Copyright © 2021 user164640. All rights reserved.
//

import UIKit




class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var orderCollectionView: UICollectionView!
    
    var orderArray = [Order]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        orderCollectionView.dataSource = self
        orderCollectionView.delegate = self
        
        
        
        self.orderArray = [
            Order(orderNo: "23", customerRef: "0002342", noOfItems: "14", status: false),
            Order(orderNo: "24", customerRef: "7867839", noOfItems: "04", status: true),
            Order(orderNo: "25", customerRef: "8796782", noOfItems: "06", status: false),
            Order(orderNo: "26", customerRef: "2368723", noOfItems: "08", status: true),
            Order(orderNo: "27", customerRef: "8927398", noOfItems: "12", status: false)
        ]
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return orderArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OrderCollectionViewCell", for: indexPath) as! OrderCollectionViewCell
        cell.setup(with: orderArray[indexPath.row])
        return cell
        
    }

}

