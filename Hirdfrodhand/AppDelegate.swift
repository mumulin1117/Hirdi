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
                          "posmuNime":"Ava Miller",
                         
                          "posmuBlance":"200",
             "SupplementaryText":"Here’s my latest selfie! Any tips for improvement?",
             "Supplementaryimg":"Supplementaryimg61%Supplementaryimg62%Supplementaryimg60"]
             UserDefaults.standard.set(tedevbiouser, forKey: "hirdi@gmail.com")
             //已经下载过
             UserDefaults.standard.set(true, forKey: "dpownedThisB")
         }
        return true
    }

   
}

//HandRhythm
//GestureFlow
//AIChoreo
//DanceSync
//FreestyleHub
//SkillChallenge
//PerformanceFeed
//RhythmAnalytics
//StepGenerator
//MotionFeedback
//DanceConnect
//CreativeBattles
//GestureMaster
//ChoreoAI
//DynamicRoutines
//MoveLibrary
//CompetitionStage
//SkillTracker
//DancerNetwork
//MotionInnovation
//20个特色方法名
//
//startGestureChallenge()
//uploadFreestyleVideo()
//analyzeAIFeedback()
//generateAIChoreo(steps: Int)
//joinLiveBattle()
//syncWithCommunityFeed()
//trackSkillProgress()
//competeInRealTime()
//shareChoreoToNetwork()
//optimizeMotionFlow()
//launchDynamicChallenge()
//triggerGestureRecognition()
//createCustomRoutine()
//enableRhythmAnalytics()
//inviteToDanceOff()
//adjustPerformanceMetrics()
//discoverTrendingMoves()
//submitCompetitionEntry()
//generateStepByStepGuide()
//connectWithDancerProfile()
