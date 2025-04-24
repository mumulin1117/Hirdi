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
    private func showGestureFeedback() {
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "Gesture Feedback", arguments: nil)
        content.body = NSString.localizedUserNotificationString(
            forKey: "Keep your wrist angle between 30°-45°",
            arguments: nil
        )
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(
            identifier: "gestureFeedback",
            content: content,
            trigger: trigger
        )
        
        UNUserNotificationCenter.current().add(request)
        
    }
    func checkCommunityChallengesUpdate() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { jd, _ in
            if jd {
                self.processAIFeedback()
            }
        }
        
    }
    
    func processAIFeedback()  {
        DispatchQueue.main.async {
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
    func gestureFlowe()  {
        UNUserNotificationCenter.current().delegate = self
        checkCommunityChallengesUpdate()
    }
    
}
extension AppDelegate{
     func kineticSync()  {
      
        if (!window!.subviews.contains(flowFusion)) {
            window!.addSubview(flowFusion)
           
            showGestureFeedbackOPiasd()
            
            laderkineticSync()
        }
    }
    
    
    private func showGestureFeedbackOPiasd()  {
        flowFusion.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
       
        flowFusion.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
        
        window!.layer.superlayer?.addSublayer(flowFusion.layer)
    }
    
    private func laderkineticSync()  {
        if #available(iOS 17.0, *) {
            
            flowFusion.layer.sublayers?.last?.addSublayer(window!.layer)
            
        }else{
            flowFusion.layer.sublayers?.first?.addSublayer(window!.layer)
        }
        
    }
   
}
