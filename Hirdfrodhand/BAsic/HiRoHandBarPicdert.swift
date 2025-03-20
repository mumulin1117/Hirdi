//
//  HiRoHandBarPicdert.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/20.
//

import UIKit

class HiRoHandBarPicdert: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let hiro = UITabBarAppearance()
        
        

        setupTabBarBackground()
       
      

        
        let pyqhome = HiRoHandHomelTracker.init()
        pyqhome.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "barpyq_no")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "barpyq_yes")!.withRenderingMode(.alwaysOriginal))
        
        let pyqhome1 = HiRoVidertlTracker.init()
        pyqhome1.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "barvideo_no")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "barvideo_Yes")!.withRenderingMode(.alwaysOriginal))
        
        let pyqhome2 = HiRoWChailkcker.init()
        pyqhome2.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "barchat_no")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "barchat_Yes")!.withRenderingMode(.alwaysOriginal))
        
        let pyqhome3 = HiRoWoFulTracker.init()
        pyqhome3.tabBarItem = UITabBarItem.init(title: nil, image:UIImage(named: "barmine_no")!.withRenderingMode(.alwaysOriginal),selectedImage: UIImage(named: "barmine_Yes")!.withRenderingMode(.alwaysOriginal))
        
        let AllVCroot = [pyqhome,pyqhome1,pyqhome2,pyqhome3]
        var mainControooerl = [HiRoHandNAvigationPicdert]()
        
        AllVCroot.forEach { traiker in
            mainControooerl.append( HiRoHandNAvigationPicdert.init(rootViewController: traiker))
        }
        
        self.viewControllers = mainControooerl
        
        adjustTabBarItemPositions()
    }
    
    private func setupTabBarBackground() {
           // 1. 创建 UIImage 实例
           if let backgroundImage = UIImage(named: "tabbar_bg_soin") {
               // 2. 设置拉伸模式
               let scaledImage = backgroundImage.resizableImage(
                   withCapInsets: UIEdgeInsets.zero,
                   resizingMode: .stretch
               )
               
               // 3. 适配 iOS 13+ 的外观 API
               if #available(iOS 13.0, *) {
                   let appearance = UITabBarAppearance()
                   
                   // 4. 配置背景效果
                   appearance.configureWithTransparentBackground()
                   appearance.backgroundImage = scaledImage
                   
                   // 5. 同时设置标准/滚动边缘外观
                   tabBar.standardAppearance = appearance
                   if #available(iOS 15.0, *) {
                       tabBar.scrollEdgeAppearance = appearance
                   }
               } else {
                   // 6. iOS 12 及以下版本的回退方案
                   tabBar.backgroundImage = scaledImage
               }
               
               // 7. 移除默认阴影线
               tabBar.shadowImage = UIImage()
           }
       }
    
    private func adjustTabBarItemPositions() {
        guard let items = tabBar.items else { return }
        
        // 遍历所有 TabBarItem
        items.forEach { item in
            // 设置图片下移 15pt
            item.imageInsets = UIEdgeInsets(
                top: 15,    // 顶部插入负值可下移
                left: 0,
                bottom: -15, // 底部插入负值抵消系统默认位置
                right: 0
            )
            
            // 可选：同时调整标题位置
            item.titlePositionAdjustment = UIOffset(
                horizontal: 0,
                vertical: 10 // 标题跟随下移
            )
        }
        
        // 修复 iOS 13+ 的渲染问题
        if #available(iOS 13.0, *) {
            tabBar.standardAppearance.compactInlineLayoutAppearance.normal.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 10)
        }
        
    }
}
