//
//  HiRoHandPicdert.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//
import SwiftyStoreKit
import UIKit
import IQKeyboardManager
import AVFoundation


//launch
class HiRoHandPicdert: UIViewController {
    
    static var chacheImage:Dictionary<String,UIImage> = Dictionary<String,UIImage>()
    
    
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
           
           AppDelegate.totalinguseindi.forEach { igjiii in
               if let videlinkg = igjiii["hiroCamera_videws"]?.components(separatedBy: "@@@").first ,
                  let videoURL = Bundle.main.url(forResource: videlinkg, withExtension: "mp4"){
                   self.getThumbnail(from: videoURL) { viideoomage in
                      
                       self.chacheImage[videlinkg] = viideoomage
                   }
               }
           }
           
          
       }
      let ingforuser = UserDefaults.standard.object(forKey: "logeduserhiedIndj") != nil
       if ingforuser {
           
           ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiRoHandBarPicdert()
           let curentuser = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? [String:String]
           if curentuser?["hiroUID"] == "hirdi@gmail.com" {
               AppDelegate.magiehangiconseindi = UIImage(named: "LOGOxloainjgf")!
              
               AppDelegate.magiehangiconseindi = UIImage(named: "lodemoUer")!
               
               return
           }
           
           AppDelegate.magiehangiconseindi = UIImage(named: "LOGOxloainjgf")!
       }else{
           ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiRoHandNEmialPicdert.init()
       }
   }
    
   class func getThumbnail(from url: URL, completion: @escaping (UIImage?) -> Void) {
        let asset = AVAsset(url: url)
        let imageGenerator = AVAssetImageGenerator(asset: asset)
        imageGenerator.appliesPreferredTrackTransform = true // 修正视频方向
        
        // 获取第 0 秒的缩略图（视频开头）
        let time = CMTime(seconds: 0, preferredTimescale: 1)
        
        imageGenerator.generateCGImagesAsynchronously(forTimes: [NSValue(time: time)]) { _, cgImage, _, _, error in
            if let error = error {
               
                completion(nil)
                return
            }
            
            if let cgImage = cgImage {
                let thumbnail = UIImage(cgImage: cgImage)
                completion(thumbnail)
            } else {
                completion(nil)
            }
        }
    }


}
