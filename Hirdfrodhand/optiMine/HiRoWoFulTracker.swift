//
//  HiRoWoFulTracker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//

import UIKit

class HiRoWoFulTracker: HolePicdwei {

    //big头像
    private lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.image = AppDelegate.magiehangiconseindi
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
        
        pohn.image = AppDelegate.magiehangiconseindi
        return pohn
    }()
    
    //setting
    private  lazy var setingButttoen: UIButton = {
        let ssss = UIButton.init()
        ssss.setImage(UIImage.init(named: "SDsdgsdfgsz"), for: .normal)
      
        ssss.addTarget(self, action: #selector(traikerSetoaskkdo), for: .touchUpInside)
        return ssss
    }()
    
    @objc func traikerSetoaskkdo()  {
        
    }
    //edit
    private  lazy var editiButttoen: UIButton = {
        let ssss = UIButton.init()
        ssss.setImage(UIImage.init(named: "ziseedit"), for: .normal)
        ssss.addTarget(self, action: #selector(traikerEdittoaskkdo), for: .touchUpInside)
        return ssss
    }()
    @objc func traikerEdittoaskkdo()  {
        
    }
    lazy var abalance: UILabel = {
        let mIgub = UILabel.init()
        mIgub.textColor = .black
        mIgub.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        
       
        return mIgub
    }()
    //blaance
    private  lazy var blanceButttoen: UIButton = {
        let ssss = UIButton.init()
        ssss.setBackgroundImage(UIImage.init(named: "muiahudg"), for: .normal)
        ssss.addTarget(self, action: #selector(toblancelgfor), for: .touchUpInside)
        
        let mIgub = UILabel.init()
        mIgub.textColor = .black
        mIgub.font = UIFont.systemFont(ofSize: 17, weight: .black)
        mIgub.text = "My wallet >"
        ssss.addSubview(mIgub)
        mIgub.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(20)
            
        }
        return ssss
    }()
    
   @objc func toblancelgfor()  {
       let vsd = ConVPanuekaioTxker.init()
       vsd.moreType = 4
       self.navigationController?.pushViewController(vsd, animated: true)
    }
    
    
    
    lazy var GiaftTochecklance: UIButton = {
        let mIgub = UIButton.init()
        mIgub.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        mIgub.layer.cornerRadius = 20
        mIgub.layer.masksToBounds = true
        mIgub.setImage(UIImage.init(named: "GisgtWei"), for: .normal)
        mIgub.addTarget(self, action: #selector(gitfCheckskkdo), for: .touchUpInside)
        return mIgub
    }()
    @objc func gitfCheckskkdo()  {
        self.addlayert(textCon: "You haven't received the gift yet!", controller: self,textColor: 2)
        
    }
    
   
    //动态
    private  lazy var hirdiButttoen: UIButton = {
        let ssss = UIButton.init()
        ssss.layer.cornerRadius = 20
        ssss.layer.masksToBounds = true
        ssss.addTarget(self, action: #selector(oaskkdo), for: .touchUpInside)
        return ssss
    }()
  
    
    @objc func oaskkdo()  {
        
    }
    // name
    private let poonetLabe = UILabel.init()
    
    
//    //follow
//    private let AddusertFollowe = UIButton.init()
//    
//    //chat
//    private let ChatertFollowe = UIButton.init()
//    
     
   
    
    
   @objc func monthToo()  {
       self.addlayert(textCon: "Please try it after call has been connected!", controller: self,textColor: 2)
       
    }
   
    
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sudh = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
        
        zhuiuaneHo.image =  AppDelegate.magiehangiconseindi
        cormaneHo.image = AppDelegate.magiehangiconseindi
        abalance.text = sudh?["hiroBlance"]
        poonetLabe.text = sudh?["hiroNlmer"]
        
       
        followcountLabe.text = "0"
        fansrLabe.text = "0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
       
        poonetLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        poonetLabe.textAlignment = .center
        
     
        OAksjnhshhhhhhh()
        Sdafioaurorusjd()
        
       
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
        view.addSubview(setingButttoen)
        setingButttoen.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.trailing.equalToSuperview().inset(15)
            make.top.equalTo((window?.safeAreaInsets.top ?? 0) + 10)
        }
       
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
    let fansrLabe = UILabel.init()
    
    let followcountLabe = UILabel.init()
   
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
        
        
        
        followcountLabe.textColor = .white
        
        followcountLabe.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        followcountLabe.textAlignment = .center
        vianufView.addSubview(followcountLabe)
        followcountLabe.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(38)
            make.top.equalToSuperview().offset(15)
            make.width.equalTo(45)
        }
       
        
        
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
        
        
        
        
        
       
        fansrLabe.textColor = .white
        fansrLabe.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        fansrLabe.textAlignment = .center
        vianufView.addSubview(fansrLabe)
        fansrLabe.snp.makeConstraints { make in
            make.leading.equalTo(followcountLabe.snp.trailing).offset(37)
            make.top.equalToSuperview().offset(15)
            make.width.equalTo(45)
        }
        
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
        
        contetnettttView.addSubview(self.blanceButttoen)
        
        blanceButttoen.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.top.equalTo(vianufView.snp.bottom).offset(20)
            make.height.equalTo(86)
            make.width.equalTo(278)
        }
        blanceButttoen.addSubview(self.abalance)
        abalance.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(46)
        }
        
        
        contetnettttView.addSubview(self.GiaftTochecklance)
        GiaftTochecklance.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(10)
            make.leading.equalTo(blanceButttoen.snp.trailing).offset(10)
            make.height.equalTo(blanceButttoen)
            make.centerY.equalTo(blanceButttoen)
        }
        
        
        let Fiajigisdsdsd = UIImageView(image: UIImage(named: "POSTS_ijaodk"))
        Fiajigisdsdsd.contentMode = .scaleAspectFit
        contetnettttView.addSubview(Fiajigisdsdsd)
        Fiajigisdsdsd.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.top.equalTo(blanceButttoen.snp.bottom).offset(23)
            make.width.equalTo(60)
            make.height.equalTo(23)
        }
        
        
        let sudh = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
        if sudh?["hiroDamicTitle"] != nil {
            hirdiButttoen.imageView?.contentMode = .scaleAspectFill
            hirdiButttoen.setImage(UIImage(named: sudh?["hiroDamicImage"] ?? ""), for: .normal)
            contetnettttView.addSubview(hirdiButttoen)
            hirdiButttoen.snp.makeConstraints { make in
                make.leading.equalToSuperview().inset(15)
                make.top.equalTo(Fiajigisdsdsd.snp.bottom).offset(10)
                make.width.equalTo(171)
                make.height.equalTo(164)
            }
        }
        
        contetnettttView.addSubview(editiButttoen)
        editiButttoen.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.centerX.equalTo(zhuiuaneHo)
            make.top.equalTo(zhuiuaneHo.snp.bottom).offset(-18)
                            
        }
    }
    
    
 

    
   
}
