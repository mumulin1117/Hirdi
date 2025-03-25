//
//  ConVUserCekaioTxker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/24.
//

import UIKit

class ConVUserCekaioTxker: HiRoHRalFllaterPicdert {
    //big头像
    private lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
//        pohn.image = AppDelegate.magiehangiconseindi
        return pohn
    }()
    
    private lazy var giftaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
    
        return pohn
    }()
    
    //头像
    private lazy var zhuiuaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 47
        pohn.layer.borderWidth =  2
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor.white.cgColor
        
//        pohn.image = AppDelegate.magiehangiconseindi
        return pohn
    }()
    
    
    private  lazy var hirdiButttoen: UIButton = {
        let ssss = UIButton.init()
        ssss.layer.cornerRadius = 20
        ssss.layer.masksToBounds = true
        ssss.addTarget(self, action: #selector(oaskkdo), for: .touchUpInside)
        return ssss
    }()
    
    //动态
    @objc func oaskkdo()  {
        
    }
    // name
    private let poonetLabe = UILabel.init()
    
    
    //follow
    private let AddusertFollowe = UIButton.init()
    
    //chat
    private let ChatertFollowe = UIButton.init()
    
    
    //video
    private let videoChatertFollowe = UIButton.init()
    
   
    
    
   @objc func monthToo()  {
       self.addlayert(textCon: "Please try it after call has been connected!", controller: self,textColor: 2)
       
    }
   
    
    
    
    
    var shouleinger:Dictionary<String,String>
    
    init(shouleinger: Dictionary<String,String>) {
        self.shouleinger = shouleinger
        super.init(nibName: nil, bundle: nil)
        self.moreType = 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        poonetLabe.text  = shouleinger["hiroNlmer"] ?? ""
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        
       
        
        if let image = UIImage(named: shouleinger["hanfledance"] ?? "") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        poonetLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        poonetLabe.textAlignment = .center
        
     
        OAksjnhshhhhhhh()
        Sdafioaurorusjd()
        
        cormaneHo.image = UIImage(named: shouleinger["hiroPociture"] ?? "")
        zhuiuaneHo.image = UIImage(named: shouleinger["hiroPociture"] ?? "")
    }
    
    private let Scrollowrwr = UIScrollView.init()
    private let contetnettttView = UIView.init()
    
    private func OAksjnhshhhhhhh() {
        view.addSubview(cormaneHo)
        cormaneHo.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview()
            make.height.equalTo(343)
        }
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        view.addSubview(Scrollowrwr)
        Scrollowrwr.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo((window?.safeAreaInsets.top ?? 0) + 40 + 95)
        }
        
        Scrollowrwr.backgroundColor = .clear
        
    
       
        contetnettttView.backgroundColor = .clear
        Scrollowrwr.addSubview(contetnettttView)
        contetnettttView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(700)
        }
    
       
        
        contetnettttView.addSubview(poonetLabe)
        poonetLabe.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(66)
        }
        
        
        
    }
    
    
    
    
    private func Sdafioaurorusjd()  {
        let vianufView = UIView.init()
        vianufView.backgroundColor = UIColor(white: 0, alpha: 0.7)
        vianufView.layer.cornerRadius = 16
        vianufView.layer.masksToBounds = true
        vianufView.layer.borderColor = UIColor.init(white: 0.7, alpha: 1).cgColor
        vianufView.layer.borderWidth = 1
        
        contetnettttView.addSubview(vianufView)
        vianufView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(80)
            make.top.equalTo(poonetLabe.snp.bottom).offset(10)
        }
        
        contetnettttView.addSubview(zhuiuaneHo)
        zhuiuaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(94)
            make.trailing.equalToSuperview().offset(-40)
            make.top.equalTo(poonetLabe.snp.top).offset(-12)
        }
        let followcountLabe = UILabel.init()
        followcountLabe.textColor = .white
        followcountLabe.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        followcountLabe.textAlignment = .center
        vianufView.addSubview(followcountLabe)
        followcountLabe.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(38)
            make.top.equalToSuperview().offset(15)
            make.width.equalTo(45)
        }
        followcountLabe.text = "\(Int.random(in: 0...10))"
        
        let FolloerLabe = UILabel.init()
        FolloerLabe.textColor = UIColor.init(white: 1, alpha: 0.5)
        FolloerLabe.text = "Followings"
        FolloerLabe.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        FolloerLabe.textAlignment = .center
        vianufView.addSubview(FolloerLabe)
        FolloerLabe.snp.makeConstraints { make in
            make.centerX.equalTo(followcountLabe)
            make.top.equalTo(followcountLabe.snp.bottom).offset(5)
        }
        
        
        
        
        
        let fansrLabe = UILabel.init()
        fansrLabe.textColor = .white
        fansrLabe.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        fansrLabe.textAlignment = .center
        vianufView.addSubview(fansrLabe)
        fansrLabe.snp.makeConstraints { make in
            make.leading.equalTo(followcountLabe.snp.trailing).offset(37)
            make.top.equalToSuperview().offset(15)
            make.width.equalTo(45)
        }
        fansrLabe.text = "\(Int.random(in: 5...10))"
        
        let fansoerLabe = UILabel.init()
        fansoerLabe.textColor = UIColor.init(white: 1, alpha: 0.5)
        fansoerLabe.text = "Fans"
        fansoerLabe.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        fansoerLabe.textAlignment = .center
        vianufView.addSubview(fansoerLabe)
        fansoerLabe.snp.makeConstraints { make in
            make.centerX.equalTo(fansrLabe)
            make.top.equalTo(fansrLabe.snp.bottom).offset(5)
        }
        
        
        AddusertFollowe.setImage(UIImage.init(named: "allopblue"), for: .normal)
        AddusertFollowe.setImage(UIImage.init(named: "yiallopblue"), for: .selected)
        AddusertFollowe.addTarget(self, action: #selector(follaowelonijer), for: .touchUpInside)
        ChatertFollowe.setImage(UIImage.init(named: "mSachat"), for: .normal)
        
        ChatertFollowe.addTarget(self, action: #selector(chatclonijer), for: .touchUpInside)
        videoChatertFollowe.setImage(UIImage.init(named: "vzxdvzvzxzx"), for: .normal)
        videoChatertFollowe.addTarget(self, action: #selector(videolonijer), for: .touchUpInside)
        contetnettttView.addSubview(AddusertFollowe)
        contetnettttView.addSubview(ChatertFollowe)
        contetnettttView.addSubview(videoChatertFollowe)
        
        AddusertFollowe.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.height.equalTo(44)
            make.width.equalTo(73)
            make.top.equalTo(vianufView.snp.bottom).offset(20)
            
        }
        
        ChatertFollowe.snp.makeConstraints { make in
            make.leading.equalTo(AddusertFollowe.snp.trailing).offset(10)
            make.height.equalTo(44)
            make.width.equalTo(73)
            make.top.equalTo(vianufView.snp.bottom).offset(20)
            
        }
        
        videoChatertFollowe.snp.makeConstraints { make in
            make.leading.equalTo(ChatertFollowe.snp.trailing).offset(10)
            make.height.equalTo(44)
            make.trailing.equalToSuperview().inset(15)
            make.top.equalTo(vianufView.snp.bottom).offset(20)
            
        }
        
        let Fiajigi = UIImageView(image: UIImage(named: "Gifts_Hirsi"))
        Fiajigi.contentMode = .scaleAspectFit
        contetnettttView.addSubview(Fiajigi)
        Fiajigi.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.top.equalTo(ChatertFollowe.snp.bottom).offset(20)
            make.width.equalTo(52)
            make.height.equalTo(23)
        }
        
        let Fiajigisdsdsd = UIImageView(image: UIImage(named: "POSTS_ijaodk"))
        Fiajigisdsdsd.contentMode = .scaleAspectFit
        contetnettttView.addSubview(Fiajigisdsdsd)
        Fiajigisdsdsd.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.top.equalTo(ChatertFollowe.snp.bottom).offset(123)
            make.width.equalTo(60)
            make.height.equalTo(23)
        }
        
        contetnettttView.addSubview(self.giftaneHo)
        giftaneHo.image = UIImage(named: "banbngbane_\(Int.random(in: 0...4))")
        self.giftaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(57)
            make.height.equalTo(54)
            make.leading.equalToSuperview().inset(15)
            make.top.equalTo(Fiajigi.snp.bottom).offset(6)
        }
        
        if shouleinger["hiroDamicTitle"] != nil {
            hirdiButttoen.imageView?.contentMode = .scaleAspectFill
            hirdiButttoen.setImage(UIImage(named: shouleinger["hiroDamicImage"] ?? ""), for: .normal)
            contetnettttView.addSubview(hirdiButttoen)
            hirdiButttoen.snp.makeConstraints { make in
                make.leading.equalToSuperview().inset(15)
                make.top.equalTo(Fiajigisdsdsd.snp.bottom).offset(10)
                make.width.equalTo(171)
                make.height.equalTo(164)
            }
        }
        
        
    }
    
    
    @objc func Dewcsclonijer() {
        self.navigationController?.popViewController(animated: true)
    }
   

    
    @objc func videolonijer() {
        self.navigationController?.pushViewController(ConVerjocallShipkeingTxker.init(shouleinger: self.shouleinger), animated: true)
    }
    
    
    @objc func chatclonijer() {
        guard  let chat = ConVerSationLisrMan.shared.conversations.filter { ChatConversation in
            return ChatConversation.diploagUser == self.shouleinger
        }.first else{
            return
        }
        
        self.navigationController?.pushViewController(ConVerSationIntgeoij.init(shouleinger: chat), animated: true)
    }
    
    @objc func follaowelonijer() {
        
    }
    
    @objc func postlonijer() {
        
    }
}
