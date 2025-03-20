//
//  HiRoHandNAvigationPicdert.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/20.
//

import UIKit
//导航栏
class HiRoHandNAvigationPicdert: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UINavigationBarAppearance()
                
        appearance.configureWithTransparentBackground()
        appearance.shadowColor = .clear
        
        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = appearance
    }
    

   

}

class HolePicdwei: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage(named: "hanfledance") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
    }
}

//
class HiRoHRalFllaterPicdert: UIViewController {
    var moreType:Int = 0//0动态 1AI 2用户相关
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let backButton = UIBarButtonItem(
            image: UIImage(named: "biuyck")?.withRenderingMode(.alwaysOriginal),
            style: .plain,
            target: self,
            action: #selector(backButtonTapped)
        )
        backButton.tag = 10
        navigationItem.leftBarButtonItem = backButton
               
               
        // 举报按钮配置
        let reportButton = UIBarButtonItem(
            image: UIImage(named: "repowedgink")?.withRenderingMode(.alwaysOriginal),
            style: .plain,
            target: self,
            action: #selector(reportButtonTapped))
            
            
        reportButton.tag = 11
        navigationItem.rightBarButtonItem = reportButton
    }
    
    
    @objc private func backButtonTapped() {
            navigationController?.popViewController(animated: true)
        }
        
       
    @objc private func reportButtonTapped() {
        print("举报按钮被点击")
        if moreType == 0 {
            //动态
        }
        
        if moreType == 1 {
            //举报AI
        }
        
        if moreType == 2 {
            //举报和拉黑
        }
    }
    
    func updateAllItemBackButton(hiddenBack: Bool,hiddenReport:Bool) {
        if let reportbuuton = view.viewWithTag(11) {
            reportbuuton.isHidden = hiddenReport
        }
        
        if let backbuuton = view.viewWithTag(10) {
            backbuuton.isHidden = hiddenBack
        }
    }
    
    
}
