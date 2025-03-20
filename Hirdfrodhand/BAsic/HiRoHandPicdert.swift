//
//  HiRoHandPicdert.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/20.
//
import SwiftyStoreKit
import UIKit
import IQKeyboardManager


//launch
class HiRoHandPicdert: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage(named: "naokeyi") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        IQKeyboardManager.shared().isEnabled = true
        self.navigationController?.navigationBar.isHidden = true
        HiRoHandPicdert.createappdemoingPOSM()
        
    }
    
 
    
   
    class  func addCompletyForPay() {
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            for purchase in purchases {
                switch purchase.transaction.transactionState {
                case .purchased, .restored:
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                case .failed, .purchasing, .deferred:break
                @unknown default:break
                }
            }
        }
        
    }
    
    
    static func createappdemoingPOSM()  {
       guard let dalihidilist = Bundle.main.path(forResource: "HIrdInOnFd", ofType: "plist"),
       let infolistdi = FileManager.default.contents(atPath: dalihidilist) else {
          
           return
       }
      
       if let pose = try? PropertyListSerialization.propertyList(from: infolistdi, options: [], format: nil) as? [[String: String]]  {
           AppDelegate.totalinguseindi = pose
       }
      let ingforuser = UserDefaults.standard.object(forKey: "logeduserhiedIndj") != nil
       if ingforuser {
           
           ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiRoHandBarPicdert()
           let curentuser = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? [String:String]
           if curentuser?["posmOID"] == "hirdi@gmail.com" {
               AppDelegate.magiehangiconseindi = UIImage(named: "LOGOxloainjgf")!
               AppDelegate.lobveMeguseindi = Set(AppDelegate.totalinguseindi.prefix(1))
               AppDelegate.melobveeMeguseindi = Set(AppDelegate.totalinguseindi.suffix(1))
               return
           }
           
           AppDelegate.magiehangiconseindi = UIImage(named: "LOGOxloainjgf")!
       }else{
           ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiRoHandNEmialPicdert.init()
       }
   }

}
