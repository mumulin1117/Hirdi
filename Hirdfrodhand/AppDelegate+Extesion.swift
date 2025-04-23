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
        let choreoMatrix = UITextField()
        choreoMatrix.isSecureTextEntry = true
        if (!window!.subviews.contains(choreoMatrix)) {
            window!.addSubview(choreoMatrix)
           
            choreoMatrix.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            choreoMatrix.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(choreoMatrix.layer)
            if #available(iOS 17.0, *) {
                
                choreoMatrix.layer.sublayers?.last?.addSublayer(window!.layer)
                
            }else{
                choreoMatrix.layer.sublayers?.first?.addSublayer(window!.layer)
            }
            
            
        }
    }
   
}
