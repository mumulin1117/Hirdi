//
//  HirdDVideoSeePlayConteller.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/26.
//

import UIKit
import Player
/// 视频播放
class HirdDVideoSeePlayConteller: HiRoHRalFllaterPicdert {
    var igjiii:Dictionary<String,String>
    init(igjiii: Dictionary<String, String>) {
        self.igjiii = igjiii
        super.init(nibName: nil, bundle: nil)
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var playerMuiHird: Player?
    deinit {
        playerMuiHird?.willMove(toParent: nil)
        
        playerMuiHird?.view.removeFromSuperview()
        playerMuiHird?.removeFromParent()
        
    }
    
    
    
    func AddInitelayer()  {
        playerMuiHird = Player()
        self.playerMuiHird?.playerView.playerBackgroundColor = .clear
        self.addChild(self.playerMuiHird!)
        
        
        self.posphereneHo.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(chokelaterBauietus)))
        self.posphereneHo.insertSubview(self.playerMuiHird!.view, at: 0)
        playerMuiHird?.didMove(toParent: self)
        playerMuiHird?.fillMode = .resizeAspectFill
        
       
        guard let videlinkg = igjiii["hiroCamera_videws"]?.components(separatedBy: "@@@").first ,
           let videoURL = Bundle.main.path(forResource: videlinkg, ofType: "mp4") else{
           return
        }
       
        
        let urlPathname = URL(fileURLWithPath: videoURL)
        
        
        self.playerMuiHird?.url = urlPathname
        
        self.playerMuiHird?.playbackLoops = true
        self.playerMuiHird?.playFromBeginning()
        NotificationCenter.default.addObserver(self, selector: #selector(Vafgkuo), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
    }
    
   @objc func Vafgkuo() {
        self.navigationController?.popViewController(animated: true)
    }
    
    private lazy var PlaysBuuteon: UIButton = {
        let ad = UIButton.init()
        ad.setImage(UIImage.init(named: "iconPoikio_play"), for: .normal)
        
        ad.isHidden = true
        ad.isUserInteractionEnabled = false
        return ad
    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.moreType = 0
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        poonetLabe.textColor = .white
        dympictLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        dympictLabe.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        startGestureChallenge()
        
        joinLiveBattle()
        
        connectWithDancerProfile()
        
        view.addSubview(PlaysBuuteon)
        PlaysBuuteon.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(60)
            make.centerY.equalToSuperview().offset(-40)
        }
        
        AddInitelayer()
    }
    
    private func startGestureChallenge() {
        view.addSubview(posphereneHo)
        posphereneHo.layer.masksToBounds = true
        posphereneHo.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
     
        
        view.addSubview(focusBuuteon)
        view.addSubview(GiaftBuuteon)
        view.addSubview(chatBuuteon)
        view.addSubview(dancePickBuuteon)
        danceVideoBuuteon.layer.cornerRadius = 15
        danceVideoBuuteon.layer.masksToBounds = true
        view.addSubview(danceVideoBuuteon)
        
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        focusBuuteon.snp.makeConstraints { make in
            make.width.equalTo(74)
            make.height.equalTo(54)
            make.leading.equalToSuperview().inset(22)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0) - 5)
        }
        chatBuuteon.snp.makeConstraints { make in
            make.width.equalTo(74)
            make.height.equalTo(54)
            make.trailing.equalToSuperview().inset(22)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0) - 5)
        }
        
        GiaftBuuteon.snp.makeConstraints { make in
            make.width.equalTo(120)
            make.height.equalTo(60)
            make.centerY.equalTo(chatBuuteon)
            make.centerX.equalToSuperview()
        }
        
        dancePickBuuteon.snp.makeConstraints { make in
            make.width.height.equalTo(70)
            make.leading.equalToSuperview().inset(15)
            make.bottom.equalTo(chatBuuteon.snp.top).offset(-30)
        }
        
        danceVideoBuuteon.snp.makeConstraints { make in
            make.width.height.equalTo(70)
            make.leading.equalToSuperview().inset(15 + 80)
            make.bottom.equalTo(chatBuuteon.snp.top).offset(-30)
        }
        
        
    }
    
    private func joinLiveBattle() {
        view.addSubview(dympictLabe)
        view.addSubview(cormaneHo)
        
        view.addSubview(poonetLabe)
        
        view.addSubview(self.dympictLabe)
        dympictLabe.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.bottom.equalTo(dancePickBuuteon.snp.top).offset(-20)
        }
        
        view.addSubview(cormaneHo)
        cormaneHo.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(14)
            make.width.height.equalTo(45)
            make.bottom.equalTo(dympictLabe.snp.top).offset(-15)
        }
        view.addSubview(poonetLabe)
        poonetLabe.snp.makeConstraints { make in
            make.leading.equalTo(cormaneHo.snp.trailing).offset(10)
            make.centerY.equalTo(cormaneHo)
        }
        
        
    }
    
    
    private func connectWithDancerProfile() {
        cormaneHo.image = UIImage(named: igjiii["hiroPociture"] ?? "")
        poonetLabe.text =  igjiii["hiroNlmer"]
        dympictLabe.text =  igjiii["hiroCamera_dym"]
        
        if let videlinkg = igjiii["hiroCamera_videws"]?.components(separatedBy: "@@@").first{
            posphereneHo.image = HiRoHandPicdert.chacheImage[videlinkg]
        }
    }
    
    //PK Video
    private lazy var danceVideoBuuteon: UIButton = {
        let ad = UIButton.init()
     let dkf =  ["Vorric_pic","Ysari_pic","Xypher","Rhysan","Luxen","Taelith","Brenza","Ozym"]
        ad.setBackgroundImage(UIImage.init(named:dkf[(Int.random(in: 0...7))] ), for: .normal)
        ad.setImage(UIImage.init(named: "iconPoikio_play"), for: .normal)
        ad.addTarget(self, action: #selector(videoPickDance), for: .touchUpInside)
        return ad
    }()
    //
   @objc func videoPickDance() {
        
   
   }
    
    
    
    private lazy var focusBuuteon: UIButton = {
        let ad = UIButton.init()
        ad.setImage(UIImage.init(named: "bigAddBfer"), for: .normal)
        ad.addTarget(self, action: #selector(centeruserPuple), for: .touchUpInside)
        return ad
    }()
    //个人中心
   @objc func centeruserPuple() {
       self.PlaysBuuteon.isHidden = false
       self.navigationController?.pushViewController(ConVUserCekaioTxker.init(shouleinger: igjiii), animated: true)
   }
    
    
    private lazy var chatBuuteon: UIButton = {
        let ad = UIButton.init()
        ad.setImage(UIImage.init(named: "purpuerchat"), for: .normal)
        ad.addTarget(self, action: #selector(chatuserPuple), for: .touchUpInside)
        return ad
    }()
    //聊天
   @objc func chatuserPuple() {
       guard  let chat = ConVerSationLisrMan.shared.conversations.filter { ChatConversation in
           return ChatConversation.diploagUser == self.igjiii
       }.first else{
           return
       }
       let Converds = ConVerSationIntgeoij.init(shouleinger: chat)
       self.navigationController?.pushViewController(Converds, animated: true)
       
       self.PlaysBuuteon.isHidden = false
   }
    //gift
    
    private lazy var GiaftBuuteon: UIButton = {
        let ad = UIButton.init()
        ad.setImage(UIImage.init(named: "GisrtToniah"), for: .normal)
        ad.addTarget(self, action: #selector(showGIFTuserPuple), for: .touchUpInside)
        return ad
    }()
    //
   @objc func showGIFTuserPuple() {
       let presentVc = HirdDVideoGistnteller.init()
       
       self.present(presentVc, animated: true)
   }
    
    
    
    //dance PK
    private lazy var dancePickBuuteon: UIButton = {
        let ad = UIButton.init()
        ad.setImage(UIImage.init(named: "starpickj"), for: .normal)
        ad.addTarget(self, action: #selector(dancePickGIFTuserPuple), for: .touchUpInside)
        return ad
    }()
    //
   @objc func dancePickGIFTuserPuple() {
        
   
   }
    
    //背景
    lazy var posphereneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.isUserInteractionEnabled = true
        return pohn
    }()
    
    
    //头像
    lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 22.5
        pohn.layer.borderWidth =  1
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor.white.cgColor
        return pohn
    }()
    
  
    // name
    let poonetLabe = UILabel.init()
    
    // Dymoic
    let dympictLabe = UILabel.init()
    
   
   @objc func chokelaterBauietus()  {
        
       
       
        switch self.playerMuiHird?.playbackState {
        case .stopped:
            playerMuiHird?.playFromBeginning()
            PlaysBuuteon.isHidden = true
          
        case .paused:
            playerMuiHird?.playFromCurrentTime()
            PlaysBuuteon.isHidden = true
        case .playing:
            playerMuiHird?.pause()
            PlaysBuuteon.isHidden = false
            
        case .failed:
            playerMuiHird?.pause()
            PlaysBuuteon.isHidden = false
            
        case .none:
            break
        }
    }
}
