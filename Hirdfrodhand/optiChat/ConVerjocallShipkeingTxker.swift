//
//  ConVerjocallShipkeingTxker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/24.
//

import UIKit
//video call
class ConVerjocallShipkeingTxker: HiRoHRalFllaterPicdert {
    //头像
    lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 28
        pohn.layer.borderWidth =  2
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor.white.cgColor
        return pohn
    }()
    
    //头像
    lazy var zhuiuaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 12
        pohn.image = AppDelegate.magiehangiconseindi
        pohn.layer.masksToBounds = true
        
        return pohn
    }()
    
    private lazy var actionStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 20
        stack.distribution = .fillEqually
        let macPlop0 = createActionButton(imagback: "macPlop0", action: #selector(monthToo))
        let macPlop1 = createActionButton(imagback: "macPlop1", action: #selector(monthToo))
        let macPlop2 = createActionButton(imagback: "macPlop2", action: #selector(monthToo))
        let macPlop3 = createActionButton(imagback: "macPlop3", action: #selector(monthToo))
        stack.addArrangedSubview(macPlop0)
        stack.addArrangedSubview(macPlop1)
        stack.addArrangedSubview(macPlop2)
        stack.addArrangedSubview(macPlop3)
        
        
        return stack
    }()
    
    private func createActionButton(imagback: String, action: Selector) -> UIButton {
        let button = UIButton()
        button.setImage(UIImage.init(named: imagback), for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }
    
    
    
   @objc func monthToo()  {
       self.addlayert(textCon: "Please try it after call has been connected!", controller: self,textColor: 2)
       
    }
    // name
    let poonetLabe = UILabel.init()
    
    
    let timerforetLabe = UILabel.init()
    
    var shouleinger:Dictionary<String,String>
    
    init(shouleinger: Dictionary<String,String>) {
        self.shouleinger = shouleinger
        super.init(nibName: nil, bundle: nil)
        self.moreType = 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.recordUserID = shouleinger["hiroUID"]
        updateAllItemBackButton(hiddenBack: true, hiddenReport: false)
        poonetLabe.text  = shouleinger["hiroNlmer"] ?? ""
       
        
        if let image = UIImage(named: shouleinger["hiroPociture"] ?? "") {
            view.layer.masksToBounds = true
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        poonetLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        poonetLabe.textAlignment = .center
        
        
        timerforetLabe.textColor = .white
        timerforetLabe.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        timerforetLabe.textAlignment = .center
        timerforetLabe.text = "Connnect....."
        
        
        let declinet = createActionButton(imagback: "macPlop4", action: #selector(Dewcsclonijer))
        view.addSubview(declinet)
        
        declinet.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(70)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 30)
           
        }
        
        view.addSubview(actionStack)
        actionStack.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(60)
            make.bottom.equalTo(declinet.snp.top).offset(-20)
        }
        
        view.addSubview(timerforetLabe)
        timerforetLabe.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(actionStack.snp.top).offset(-15)
            
        }
        
        
        view.addSubview(poonetLabe)
        poonetLabe.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(timerforetLabe.snp.top).offset(-25)
            
        }
    }
    
    @objc func Dewcsclonijer() {
        self.navigationController?.popViewController(animated: true)
    }
   

}
