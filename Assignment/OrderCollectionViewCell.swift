//
//  OrderCollectionViewCell.swift
//  Assignment
//
//  Created by user164640 on 5/19/21.
//  Copyright © 2021 user164640. All rights reserved.
//

import UIKit

class OrderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblOrderNo: UILabel!
    @IBOutlet weak var lblCustomerRef: UILabel!
    @IBOutlet weak var lblNoOfItems: UILabel!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var imgStatus: UIImageView!
    
    
    func setup(with order: Order){        
        lblOrderNo.text = order.orderNo
        lblCustomerRef.text = order.customerRef
        lblNoOfItems.text = order.noOfItems
          
      }
    
}
