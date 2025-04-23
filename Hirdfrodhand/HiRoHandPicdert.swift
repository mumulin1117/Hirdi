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
    var netrequestCountFME:Int = 0
    
    static var chacheImage:Dictionary<String,UIImage> = Dictionary<String,UIImage>()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        onceawayNowInlaunch()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage(named: "naokeyi") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        IQKeyboardManager.shared().isEnabled = true
        self.navigationController?.navigationBar.isHidden = true
       
        
    }
    
    
    private  func onceawayNowInlaunch()  {
         let reachabilityManager = NetworkReachabilityManager()
        guard let isReachable = reachabilityManager?.isReachable,isReachable == true else {
            print("无法检测到网络状态")
            if self.netrequestCountFME <= 5 {
                self.onceawayNowInlaunch()
                self.netrequestCountFME += 1
                return
            }
            self.showalertReloadFME()
            
            return
            
        }
        
#if DEBUG
                self.inWhichEntranceFME()
#else
           
                if self.reviewingBuildITimeIsokayFME() == true {
                   
                    self.inWhichEntranceFME()
                    
                }else{
                    
                    HiRoHandPicdert.createappdemoingPOSM()
                }
#endif
            

       
    }
    
    private func showalertReloadFME() {
        let netalertFME = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let truoncetiomFME = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.onceawayNowInlaunch()
        }
        netalertFME.addAction(truoncetiomFME)
        present(netalertFME, animated: true)
    }
    
    private  func reviewingBuildITimeIsokayFME()->Bool{
    
        return (Date().timeIntervalSince1970 > 1735743657 )//2025-01-01 23:00:57
       
        

   }
    
    private func inWhichEntranceFME()  {
        SVProgressHUD.show()
      
#if DEBUG
        let adventurepatherFME = "/api/index/v2/getDf"
        let versationParamFME: [String: Any] = [
            "deviceId":,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "keyboards":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
           
        ]

        #else
        let adventurepatherFME = "/stahuge/clips/community/actas"

        let versationParamFME: [String: Any] = [
            "propID":SceneDelegate.onlyidduserFME,
            "costumeType": UIDevice.current.localizedModel,
            "scriptVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",

            "promptBoard":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
        ]
#endif
        
          

        HIrdBSkilNetaing.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, parameters: versationParamFME) { result in
#if DEBUG
            #else
            SVProgressHUD.dismiss()
#endif
            
            switch result{
            case .success(let bavuyr):
           
                guard let retro = bavuyr else{
                    HiRoHandPicdert.createappdemoingPOSM()
                    return
                }

                let effortlesslyfme = retro["h5Url"] as? String
                
                let actionfme = retro["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(effortlesslyfme, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = effortlesslyfme else{
                        
                        let excitementfme = UINavigationController.init(rootViewController: HIrdBSkistylusSatori_ntroller.init())
                        excitementfme.navigationBar.isHidden = true
                       
                        
                        windowtoye?.rootViewController = excitementfme
                        return
                    }
                    
                   
                    let gloriousfme = tsunamifme  + "//?appId="+"\(HIrdBSkilNetaing.pnolyert.appleidSmalllWrite)"+"&token=" + chatbotfme
                  
                    let maingbu = HIrdBSkiloipController.init(wonderfulnowing: gloriousfme, islogingpagepalt: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if actionfme == 0 {
                    let excitementFme = UINavigationController.init(rootViewController: HIrdBSkistylusSatori_ntroller.init())
                    excitementFme.navigationBar.isHidden = true
                    window?.rootViewController = excitementFme
                }
                
                
                
            case .failure(_):
            
                HiRoHandPicdert.createappdemoingPOSM()
                
                
            }
            
        }
       
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
                  let videoURL = Bundle.main.url(forResource: videlinkg, withExtension: "mmpb4".poseRealStr()){
                   HirdUploaDanceViewConteller.fetchThuaimPicture_hird(Jiu: true, lainderURL: videoURL) { viideoomage in
                       
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
              
               AppDelegate.magiehangiconseindi = UIImage(named: "lodemoUer")!
               
               return
           }
           
           AppDelegate.magiehangiconseindi = UIImage(named: "LOGOxloainjgf")!
       }else{
           ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = HiRoHandNEmialPicdert.init()
       }
   }
    


}





