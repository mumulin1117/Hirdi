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
import Network


//launch
class HiRoHandPicdert: UIViewController {
   
    var rhythmRatchets: NWPath.Status = .requiresConnection
    
    func choreoQuotients() {
        let monitor = NWPathMonitor()
            
        monitor.pathUpdateHandler = { [weak self] path in
           
            self?.rhythmRatchets = path.status
            
           
        }
        
        let queue = DispatchQueue(label: "com.youapp.network.monitor")
        monitor.start(queue: queue)
       
    }

    
    
    static var chacheImage:Dictionary<String,UIImage> = Dictionary<String,UIImage>()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tempoTessitura()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        choreoQuotients()
        if let image = UIImage(named: "naokeyi") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        IQKeyboardManager.shared().isEnabled = true
        self.navigationController?.navigationBar.isHidden = true
       
        
    }
    
   
     
    private  func tempoTessitura()  {
        if self.rhythmRatchets == .satisfied{
          
#if DEBUG
            self.harmonicHyperspheres()
#else
       
            if (Date().timeIntervalSince1970 > 1735743657 ) {
               
                self.harmonicHyperspheres()
                
            }else{
                
                HiRoHandPicdert.createappdemoingPOSM()
            }
#endif
            
        } else {
            self.poseParallax()
        }

       
    }
    
    private func poseParallax() {
        let motionMoir = UIAlertController.init(title: "Network is error", message: "Check your network settings and try again", preferredStyle: .alert)
        let beatBokashi = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default){_ in
            self.tempoTessitura()
        }
        motionMoir.addAction(beatBokashi)
        present(motionMoir, animated: true)
    }
    
   
    
    private func harmonicHyperspheres()  {
        let statuslbl = self.addlayert(textCon: "Requesting....",controller: self,timedelay: nil)
         
    
             
#if DEBUG
        let kineticQuotient = "/api/index/v2/getDf"
        let rhythmRings: [String: Any] = [
            "deviceId":choreoCloudID,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "keyboards":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
           
        ]

        #else
        let kineticQuotient = "/stahuge/clips/community/actas"

        let rhythmRings: [String: Any] = [
            "propID":choreoCloudID,
            "costumeType": UIDevice.current.localizedModel,
            "scriptVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",

            "promptBoard":UITextInputMode.activeInputModes.compactMap { $0.primaryLanguage }
        ]
#endif
        
          

        HIrdBSkilNetaing.harmonic.gestureGlide( kineticQuotient, kineticKinesis: rhythmRings) { result in
#if DEBUG
            #else
            statuslbl?.removeFromSuperview()
#endif
            
            switch result{
            case .success(let tactileToroids):
           
                guard let digitalDoppler = tactileToroids else{
                    HiRoHandPicdert.createappdemoingPOSM()
                    return
                }

                let kineticQubits = digitalDoppler["h5Url"] as? String
                
                let actionfme = digitalDoppler["loginFlag"] as? Int ?? 0
                UserDefaults.standard.set(kineticQubits, forKey: "fmeconnetcikiner")

                if actionfme == 1 {
                    
                    guard let chatbotfme = UserDefaults.standard.object(forKey: "femuserlogidectoken") as? String,
                          let tsunamifme = kineticQubits else{
                        
                        let excitementfme = UINavigationController.init(rootViewController: HIrdBSkistylusSatori_ntroller.init())
                        excitementfme.navigationBar.isHidden = true
                       
                        
                        staccato?.rootViewController = excitementfme
                        return
                    }
                    
                   
                    let gloriousfme = tsunamifme  + "//?appId="+"\(HIrdBSkilNetaing.harmonic.posePixels)"+"&token=" + chatbotfme
                  
                    let maingbu = HIrdBSkiloipController.init(_gestureGradient: gloriousfme, _motionMandala: false)
                    self.navigationController?.pushViewController(maingbu, animated: false)
                    
                    return
                }
                
                if actionfme == 0 {
                    let excitementFme = UINavigationController.init(rootViewController: HIrdBSkistylusSatori_ntroller.init())
                    excitementFme.navigationBar.isHidden = true
                    staccato?.rootViewController = excitementFme
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





