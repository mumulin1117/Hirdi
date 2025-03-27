//
//  HirdDuiayINmConteller.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/26.
//

import UIKit
protocol HirdDuiayINmContellerDelegate {
    func uoapfasdtecomment()
}


/// 动态详情
class HirdDuiayINmConteller: HiRoHRalFllaterPicdert {
    var delegate:HirdDuiayINmContellerDelegate?
    var igjiii:Dictionary<String,String>
    var ismecenet: Bool
    init(igjiii: Dictionary<String, String>,ismecenet:Bool) {
        self.igjiii = igjiii
        self.ismecenet = ismecenet
        super.init(nibName: nil, bundle: nil)
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private let Scrollowrwr = UIScrollView.init()
    
    //背景
    lazy var posphereneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
      
        return pohn
    }()
    
    
    //头像
    lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 29
        pohn.layer.borderWidth =  1
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1).cgColor
        return pohn
    }()
    
    // name
    let poonetLabe = UILabel.init()
    
    // Dymoic
    let dympictLabe = UILabel.init()
    
    //赞
    lazy var paoiseAiHird: UIButton = {
        let chorePayHird = UIButton.init()
        chorePayHird.layer.cornerRadius = 18
        chorePayHird.layer.masksToBounds = true
        chorePayHird.setImage(UIImage.init(named: "15aihaeadt"), for: .normal)
        chorePayHird.setImage(UIImage.init(named: "pinkaeadt"), for: .selected)
        chorePayHird.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.4200)
        chorePayHird.isSelected = (igjiii["Laikethimonent"] == "1") ? true : false
        chorePayHird.addTarget(self, action: #selector(BeginFaveriteing), for: .touchUpInside)
        return chorePayHird
    }()
   @objc func BeginFaveriteing()  {
       paoiseAiHird.isSelected = !paoiseAiHird.isSelected
       
       igjiii["Laikethimonent"] = paoiseAiHird.isSelected ? "1" : "0"
       
      
       for (ssdj,itemr) in AppDelegate.totalinguseindi.enumerated() {
           if itemr["hiroUID"] == igjiii["hiroUID"] {
               AppDelegate.totalinguseindi[ssdj] = self.igjiii
           }
       }
       
       if self.delegate != nil {
           self.delegate?.uoapfasdtecomment()
       }
       
       self.inoupteTexfield.text = nil
       self.inoupteTexfield.resignFirstResponder()
    }
    
    //focus
    private  lazy var focusAiHird: UIButton = {
        let chorePayHird = UIButton.init()
        
        chorePayHird.setImage(UIImage.init(named: "focuasTo"), for: .normal)
        chorePayHird.setImage(UIImage.init(named: "focuasTo_skr"), for: .selected)
        chorePayHird.addTarget(self, action: #selector(centeruserPuple), for: .touchUpInside)
        return chorePayHird
    }()
    
    //个人中心
   @objc func centeruserPuple() {
       
       self.navigationController?.pushViewController(ConVUserCekaioTxker.init(shouleinger: igjiii), animated: true)
   }
    
    private lazy var inoupteTexfield: UITextField = {
        let juiy = UITextField.init()
        juiy.textColor = .white
        
        juiy.leftViewMode = .always
        juiy.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 20, height: 20))
        juiy.rightViewMode = .always
        
        let imgjurt = UIImageView.init(image: UIImage.init(named: "sentergu"))
        imgjurt.frame.size = CGSize.init(width: 68, height: 46)
        imgjurt.isUserInteractionEnabled = true
        imgjurt.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Amingkuiiiodfwer)))
        
        juiy.rightView = imgjurt
        
        juiy.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        juiy.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        juiy.textAlignment = .left
        juiy.layer.cornerRadius = 15
        juiy.layer.masksToBounds = true
        juiy.attributedPlaceholder = NSAttributedString(string: "Say something....", attributes: [.foregroundColor:UIColor.white])
        return juiy
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.moreType = 0
        self.recordUserID = igjiii["hiroUID"]
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        Scrollowrwr.backgroundColor = .clear
        view.addSubview(Scrollowrwr)
        Scrollowrwr.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(vaABacking), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
        connectWithDancerProfile()
        Uhudhuing()
        enableRhythmAnalytics()
        
        launchDynamicChallenge()
        
        if igjiii["minComment"] != nil {
            self.analyzeAIFeedback()
        }
        
        if ismecenet == true {
            if #available(iOS 16.0, *) {
                self.navigationController?.navigationItem.rightBarButtonItem?.isHidden = true
            }
            self.focusAiHird.isHidden = true
            self.inoupteTexfield.isHidden = true
        }
    }
    
    @objc func vaABacking()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    private let BoometomView = UIView.init()
    
    
    private  func connectWithDancerProfile()  {
        Scrollowrwr.contentInsetAdjustmentBehavior = .never
        Scrollowrwr.addSubview(self.posphereneHo)
        posphereneHo.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.height.equalTo(480)
            make.width.equalTo(UIScreen.main.bounds.width)
            make.bottom.equalToSuperview().offset(-450)
        }
        dympictLabe.numberOfLines = 0
        dympictLabe.textColor = .white
        dympictLabe.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        
        poonetLabe.numberOfLines = 0
        poonetLabe.textColor = UIColor(white: 1, alpha: 1)
        poonetLabe.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        
        
        BoometomView.backgroundColor = UIColor(red: 0.16, green: 0.16, blue: 0.27, alpha: 1)
        BoometomView.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        BoometomView.layer.cornerRadius = 15
        Scrollowrwr.addSubview(BoometomView)
        BoometomView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
            
            make.top.equalTo(posphereneHo.snp.bottom).offset(-20)
        }
        
        BoometomView.addSubview(cormaneHo)
        BoometomView.addSubview(poonetLabe)
        BoometomView.addSubview(dympictLabe)
        BoometomView.addSubview(focusAiHird)
        cormaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(58)
            make.leading.equalToSuperview().inset(15)
            make.top.equalTo(BoometomView.snp.top).offset(-20)
        }
        
        poonetLabe.snp.makeConstraints { make in
            make.leading.equalTo(cormaneHo.snp.trailing).offset(14)
           
            make.centerY.equalTo(cormaneHo.snp.centerY).offset(8)
        }
        
        dympictLabe.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.top.equalTo(cormaneHo.snp.bottom).offset(15)
            
        }
        
        focusAiHird.snp.makeConstraints { make in
            make.width.equalTo(44)
            make.height.equalTo(32)
            make.trailing.equalToSuperview().inset(14)
            make.bottom.equalTo(cormaneHo)
        }
        let slop = UIView.init()
        slop.backgroundColor = UIColor.init(white: 1, alpha: 0.7)
        BoometomView.addSubview(slop)
        slop.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.trailing.equalToSuperview().inset(10)
            make.top.equalTo(dympictLabe.snp.bottom).offset(22)
            make.height.equalTo(1)
        }
    }
    private func Uhudhuing()  {
        
        let scene = UIApplication.shared.connectedScenes.first
        
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        self.view.addSubview(self.inoupteTexfield)
        inoupteTexfield.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(15)
            make.leading.equalToSuperview().inset(70)
            make.height.equalTo(52)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0) - 10)
        }
        
        self.view.addSubview(paoiseAiHird)
        paoiseAiHird.snp.makeConstraints { make in
            make.width.height.equalTo(32)
            make.centerY.equalTo(inoupteTexfield)
            make.leading.equalToSuperview().inset(20)
        }
        
        let XuaxiNlab = UILabel.init()
        XuaxiNlab.textAlignment = .center
        XuaxiNlab.text = "----------------------------------------------"
        XuaxiNlab.textColor = UIColor.init(white: 1, alpha: 0.5)
        XuaxiNlab.font = UIFont.systemFont(ofSize: 17)
        XuaxiNlab.numberOfLines = 1
        view.addSubview(XuaxiNlab)
        XuaxiNlab.snp.makeConstraints { make in
            make.leading.right.equalToSuperview()
            make.height.equalTo(20)
            make.bottom.equalTo(inoupteTexfield.snp.top).offset(-16)
        }
    }

    
    //发送评论
    @objc func Amingkuiiiodfwer() {
        guard let ususyu = inoupteTexfield.text,ususyu.isEmpty == false else {
            self.addlayert(textCon: "Please enter content", controller: self,textColor: 2)
          
            return
        }
        if igjiii["minComment"] != nil {
            self.addlayert(textCon: "Sorry,Comments too frequent!", controller: self,textColor: 2)
            
            return
        }
        
        
        igjiii["minComment"] = ususyu
       
        for (ssdj,itemr) in AppDelegate.totalinguseindi.enumerated() {
            if itemr["hiroUID"] == igjiii["hiroUID"] {
                AppDelegate.totalinguseindi[ssdj] = self.igjiii
            }
        }
        if self.delegate != nil {
            self.delegate?.uoapfasdtecomment()
        }
        self.inoupteTexfield.text = nil
        self.inoupteTexfield.resignFirstResponder()
        
        analyzeAIFeedback()
        
       
        
    
    }
   
    private func enableRhythmAnalytics() {
        cormaneHo.image = UIImage(named: igjiii["hiroPociture"] ?? "")
        poonetLabe.text =  igjiii["hiroNlmer"]
        dympictLabe.text =  igjiii["hiroDamicTitle"]
        posphereneHo.image = UIImage(named: igjiii["hiroDamicImage"] ?? "")
        
    }
}


extension HirdDuiayINmConteller{
    
    private func launchDynamicChallenge()  {
        let pohnIJMG = UIImageView.init()
        
        let NameetLabe = UILabel.init()
        NameetLabe.textAlignment = .left
        NameetLabe.textColor = UIColor.init(white: 1, alpha: 0.7)
        NameetLabe.font = UIFont.systemFont(ofSize: 13)
        NameetLabe.numberOfLines = 0
        
        
        
        let contacttLabe = UILabel.init()
        contacttLabe.textAlignment = .left
        contacttLabe.textColor = UIColor.init(white: 1, alpha: 1)
        contacttLabe.font = UIFont.systemFont(ofSize: 12)
        contacttLabe.numberOfLines = 0
        
        pohnIJMG.contentMode = .scaleAspectFill
        pohnIJMG.layer.cornerRadius = 20
        pohnIJMG.layer.borderWidth =  1
        pohnIJMG.layer.masksToBounds = true
        pohnIJMG.layer.borderColor = UIColor.white.cgColor
        
        Scrollowrwr.addSubview(pohnIJMG)
        Scrollowrwr.addSubview(NameetLabe)
        Scrollowrwr.addSubview(contacttLabe)
        
      
        
        pohnIJMG.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.leading.equalToSuperview().inset(15 + 10)
            make.top.equalTo(dympictLabe.snp.bottom).offset(45)
        }
        
        NameetLabe.snp.makeConstraints { make in
            make.leading.equalTo(pohnIJMG.snp.trailing).offset(10)
            make.top.equalTo(pohnIJMG)
        }
        
        contacttLabe.snp.makeConstraints { make in
            make.leading.equalTo(pohnIJMG.snp.trailing).offset(10)
            make.top.equalTo(NameetLabe.snp.bottom).offset(5)
            make.trailing.equalToSuperview().inset(15)
        }
        
        let allOIus = ["Love how Hirdi's AI feedback instantly polishes my gesture flows - finally mastering complex combos feels achievable! 👐💫"
                       ,"ChoreoHand AI is a game-changer! Generated routines keep my content fresh and my followers hooked. 🤖✨",
                       
                       "The gesture battle challenges? Next-level adrenaline. My competitive side has found its playground. 🏆👊",
                       "Who knew an app could make hand-dancing this social?",
                       "Hirdi’s blend of tech and artistry actually levels up your skills.📈👌",
        
                       "If your hands crave expression, download ASAP. This isn’t just an app—it’s a movement.🚀✋",
                       "Posting freestyle vids here hits different—the hype from fellow dancers fuels my creativity nonstop.💥🤩",
                       "Progress feels lightning-fast. 📲💨",
                       "My competitive side has found its playground.🏆👊"]
        
        let OPaiue = allOIus.randomElement()
        contacttLabe.text = OPaiue
        
      let appapadic =  AppDelegate.totalinguseindi.randomElement()
        
        pohnIJMG.image = UIImage(named: appapadic?["hiroPociture"] ?? "")
        NameetLabe.text = appapadic?["hiroNlmer"]
    }
    
    
    private func analyzeAIFeedback()  {
        let pohnIJMG = UIImageView.init()
        
        let NameetLabe = UILabel.init()
        NameetLabe.textAlignment = .left
        NameetLabe.textColor = UIColor.init(white: 1, alpha: 0.7)
        NameetLabe.font = UIFont.systemFont(ofSize: 13)
        NameetLabe.numberOfLines = 0
        
        
        
        let contacttLabe = UILabel.init()
        contacttLabe.textAlignment = .left
        contacttLabe.textColor = UIColor.init(white: 1, alpha: 1)
        contacttLabe.font = UIFont.systemFont(ofSize: 12)
        contacttLabe.numberOfLines = 0
        
        pohnIJMG.contentMode = .scaleAspectFill
        pohnIJMG.layer.cornerRadius = 20
        pohnIJMG.layer.borderWidth =  1
        pohnIJMG.layer.masksToBounds = true
        pohnIJMG.layer.borderColor = UIColor.white.cgColor
        
        Scrollowrwr.addSubview(pohnIJMG)
        Scrollowrwr.addSubview(NameetLabe)
        Scrollowrwr.addSubview(contacttLabe)
        
        
        
        pohnIJMG.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.leading.equalToSuperview().inset(15 + 10)
            make.top.equalTo(dympictLabe.snp.bottom).offset(120)
        }
        
        NameetLabe.snp.makeConstraints { make in
            make.leading.equalTo(pohnIJMG.snp.trailing).offset(10)
            make.top.equalTo(pohnIJMG)
        }
        
        contacttLabe.snp.makeConstraints { make in
            make.leading.equalTo(pohnIJMG.snp.trailing).offset(10)
            make.top.equalTo(NameetLabe.snp.bottom).offset(5)
            make.trailing.equalToSuperview().inset(15)
        }
        
      
        pohnIJMG.image = AppDelegate.magiehangiconseindi
        NameetLabe.text = "Me"
        contacttLabe.text = igjiii["minComment"]
    }
}
