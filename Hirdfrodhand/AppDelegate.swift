//
//  AppDelegate.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//

import UIKit
import Siren
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    static var IfRemoveRecord:Bool = false
    
    static var totalinguseindi = Array<Dictionary<String,String>>()

    static var magiehangiconseindi:UIImage = UIImage(named: "LOGOxloainjgf")!
    let siren = Siren.shared
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        HiRoHandPicdert.addCompletyForPay()
        self.window?.rootViewController = HiRoHandNAvigationPicdert.init(rootViewController: HiRoHandPicdert.init()) 
        window?.makeKeyAndVisible()
        
        
        siren.rulesManager = RulesManager(
               majorUpdateRules: .critical,      // 大版本强制更新
               minorUpdateRules: .persistent,   // 小版本频繁提示
               patchUpdateRules: .default,      // 补丁版本默认提示
               revisionUpdateRules: .relaxed    // 修订版本宽松提示
          
        )
        
        
         if UserDefaults.standard.bool(forKey: "YIAjingLoadThisApp") == false {
             
             AdrfAsetinhgfor()
             UserDefaults.standard.set(true, forKey: "YIAjingLoadThisApp")
         }else{
             siren.wail() // 启动检测
         }
        
        HirdCollectionPyousableView.clomepltespay()
        return true
    }

    
    
    func AdrfAsetinhgfor()  {
        let snsd = ["hiroUID":"hirdi@gmail.com",
                     "hiroNlmer":"Veiren",
                    
                     "hiroBlance":"10",
        "hiroDamicTitle":"Expressing vibes, one gesture at a time. 🔥🤙",
                            "hiroPociture":"lodemoUer",
        "hiroDamicImage":"Mineloguer_con"]
        siren.wail() // 启动检测
       
        UserDefaults.standard.set(snsd, forKey: "hirdi@gmail.com")
    }
   
}

