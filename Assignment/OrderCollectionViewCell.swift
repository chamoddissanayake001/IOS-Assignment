import UIKit

class OrderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblOrderNo: UILabel!
    @IBOutlet weak var lblCustomerRef: UILabel!
    @IBOutlet weak var lblNoOfItems: UILabel!
    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var imgStatus: UIImageView!
    
    @IBOutlet weak var continueBtn: UIButton!
    
    func setup(with order: Order){        
        lblOrderNo.text = order.orderNo
        lblCustomerRef.text = order.customerRef
        lblNoOfItems.text = order.noOfItems
        if (order.status == true){
            imgStatus.image = #imageLiteral(resourceName: "checked")
        }else{
            imgStatus.image = #imageLiteral(resourceName: "unchecked")
        }
          
      }
    
    @IBAction func btnContinue(_ sender: Any) {
        self.continueBtnPressed?()
    }
    var continueBtnPressed:(()->())?
}
