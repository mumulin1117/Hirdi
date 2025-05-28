//
//  SocialMotivation.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//

import UIKit

class SocialMotivation: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let hiro = UITabBarAppearance()
        
        
      
        setupTabBarBackHIRDIground()
       
      

        
        let pyqhome = RoHandHomelTracker.init()
        pyqhome.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "barpyq_no")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "barpyq_yes")!.withRenderingMode(.alwaysOriginal))
        
        let pyqhome1 = Breakdownsmapping.init()
        pyqhome1.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "flowFables")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "beatBioluminescence")!.withRenderingMode(.alwaysOriginal))
        
        let pyqhome2 = HiRoWChailkcker.init()
        pyqhome2.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "posePalette_no")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "digitalDervish")!.withRenderingMode(.alwaysOriginal))
        
        let pyqhome3 = ShowcaseSkill.init()
        pyqhome3.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "barmine_no")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "barmine_Yes")!.withRenderingMode(.alwaysOriginal))
        
        let AllVCroot = [pyqhome,pyqhome1,pyqhome2,pyqhome3]
        var mainControooerl = [Focusesintersection]()
        
        AllVCroot.forEach { traiker in
            mainControooerl.append( Focusesintersection.init(rootViewController: traiker))
        }
        
        self.viewControllers = mainControooerl
        
        adjustDownTabBamPositions()
    }
    
    private func setupTabBarBackHIRDIground() {
    
           if let backgroundImage = UIImage(named: "tabbar_bg_soin") {
          
               let scaledImage = backgroundImage.resizableImage(
                   withCapInsets: UIEdgeInsets.zero,
                   resizingMode: .stretch
               )
              
               if #available(iOS 13.0, *) {
                   let appearance = UITabBarAppearance()
                   
                
                   appearance.configureWithTransparentBackground()
                   appearance.backgroundImage = scaledImage
                   
               
                   tabBar.standardAppearance = appearance
                   if #available(iOS 15.0, *) {
                       tabBar.scrollEdgeAppearance = appearance
                   }
               } else {
                 
                   tabBar.backgroundImage = scaledImage
               }
               
             
               tabBar.shadowImage = UIImage()
           }
       }
    
    private func adjustDownTabBamPositions() {
        guard let items = tabBar.items else { return }
        
       
        items.forEach { item in
            // 设置图片下移 15pt
            item.imageInsets = UIEdgeInsets(
                top: 15,
                left: 0,
                bottom: -15,
                right: 0
            )
            
          
            item.titlePositionAdjustment = UIOffset(
                horizontal: 0,
                vertical: 10 // 标题跟随下移
            )
        }
        
       
        if #available(iOS 13.0, *) {
            tabBar.standardAppearance.compactInlineLayoutAppearance.normal.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 10)
        }
        
    }
}
