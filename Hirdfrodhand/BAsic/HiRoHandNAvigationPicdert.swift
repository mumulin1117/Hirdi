//
//  HiRoHandNAvigationPicdert.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
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
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
     
        if children.count > 0  && !viewController.isMember(of:HiRoHRalFllaterPicdert.self) {
            viewController.hidesBottomBarWhenPushed = true
        }

        super.pushViewController(viewController, animated: false)
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
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if moreType == 2 {
            NotificationCenter.default.addObserver(self, selector: #selector(backButtonTapped), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
        }
        
        if moreType > 2 {
            if let reportbuuton = view.viewWithTag(11) {
                reportbuuton.isHidden = true
            }
        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage(named: "hanfledance") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
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
        self.navigationItem.rightBarButtonItem?.isHidden = hiddenReport
        
        self.navigationItem.leftBarButtonItem?.isHidden = hiddenBack
    }
    
    
}
