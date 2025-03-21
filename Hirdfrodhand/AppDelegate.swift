//
//  AppDelegate.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    static var totalinguseindi = Array<Dictionary<String,String>>()
    static var lobveMeguseindi = Set<Dictionary<String,String>>()
    static var melobveeMeguseindi = Set<Dictionary<String,String>>()
    static var magiehangiconseindi:UIImage = UIImage(named: "LOGOxloainjgf")!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        HiRoHandPicdert.addCompletyForPay()
        self.window?.rootViewController = HiRoHandNAvigationPicdert.init(rootViewController: HiRoHandPicdert.init()) 
        window?.makeKeyAndVisible()
        
        
        
        //是否已经下载过app
         if UserDefaults.standard.bool(forKey: "dpownedThisB") == false {
             //设置test账号
             let tedevbiouser = ["posmOID":"hirdi@gmail.com",
                          "hiroNlmer":"Veiren",
                         
                          "hiroBlance":"10",
             "hiroDamicTitle":"Expressing vibes, one gesture at a time. 🔥🤙",
                                 "hiroPociture":"lodemoUer",
             "hiroDamicImage":"Mineloguer_con"]
             UserDefaults.standard.set(tedevbiouser, forKey: "hirdi@gmail.com")
             //已经下载过
             UserDefaults.standard.set(true, forKey: "dpownedThisB")
         }
        return true
    }

   
}

