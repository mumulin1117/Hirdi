//
//  DFggViewController.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/4/23.
//

import UIKit

extension AppDelegate:UNUserNotificationCenterDelegate{
    
    
    

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
       
        let remotetokenHIRDI = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        
        UserDefaults.standard.set(remotetokenHIRDI, forKey: "remotetokenHIRDI")
       
    }
    
    
    func gestureFlowe()  {
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { jd, _ in
            if jd {
                DispatchQueue.main.async {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
}
extension AppDelegate{
    func kineticSync()  {
        let flowFusion = UITextField()
        flowFusion.isSecureTextEntry = true
        if (!window!.subviews.contains(flowFusion)) {
            window!.addSubview(flowFusion)
           
            flowFusion.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            flowFusion.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(flowFusion.layer)
            if #available(iOS 17.0, *) {
                
                flowFusion.layer.sublayers?.last?.addSublayer(window!.layer)
                
            }else{
                flowFusion.layer.sublayers?.first?.addSublayer(window!.layer)
            }
            
            
        }
    }
   
}
