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
    static var totalinguseindi = Array<Dictionary<String,String>>()

    static var magiehangiconseindi:UIImage = UIImage(named: "LOGOxloainjgf")!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        HiRoHandPicdert.addCompletyForPay()
        self.window?.rootViewController = HiRoHandNAvigationPicdert.init(rootViewController: HiRoHandPicdert.init()) 
        window?.makeKeyAndVisible()
        
        let siren = Siren.shared
        siren.rulesManager = RulesManager(
               majorUpdateRules: .critical,      // 大版本强制更新
               minorUpdateRules: .persistent,   // 小版本频繁提示
               patchUpdateRules: .default,      // 补丁版本默认提示
               revisionUpdateRules: .relaxed    // 修订版本宽松提示
          
        )
        siren.wail() // 启动检测
        
        //是否已经下载过app
         if UserDefaults.standard.bool(forKey: "dpownedThisB") == false {
             //设置test账号
             let tedevbiouser = ["hiroUID":"hirdi@gmail.com",
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

