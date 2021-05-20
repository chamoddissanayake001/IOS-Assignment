import UIKit

class Order:NSObject {
    var orderNo: String?
    var customerRef: String?
    var noOfItems: String?
    var status : Bool?


    init (orderNo: String, customerRef: String, noOfItems: String, status: Bool) {
       
        self.orderNo =  orderNo
        self.customerRef = customerRef
        self.noOfItems =  noOfItems
        self.status = status
    }
}
