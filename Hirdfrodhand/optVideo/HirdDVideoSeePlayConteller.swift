//
//  HirdDVideoSeePlayConteller.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/26.
//

import UIKit
import Player
/// 视频播放
class HirdDVideoSeePlayConteller: HiRoHRalFllaterPicdert, HirdDVideoGistntellerGibeDele {
    
    //礼物特效显示
    func figtNameGiven(name: String, count: Int) {
        self.giftContent.image = UIImage(named: name)
        self.giftCountShing.text = "\(count)"
        UIView.animate(withDuration: 1.0) {
            self.backgrounfsView.frame = CGRect.init(x: 0, y: self.view.frame.height - 450, width: 280, height: 68)
        } completion: { bgi in
            self.backgrounfsView.frame = CGRect.init(x: 0, y: self.view.frame.height , width: 280, height: 68)
        }

    }
    
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
        
        VackINOFo()
        
    }
    private  func VackINOFo()  {
        playerMuiHird?.view.removeFromSuperview()
        playerMuiHird?.removeFromParent()
    }
    
    
    func AddHIRDIInitelayer()  {
        playerMuiHird = Player()
        self.playerMuiHird?.playerView.playerBackgroundColor = .clear
        
        
        self.addChild(self.playerMuiHird!)
        
        
        DraverDance()
       
        guard let videlinkg = igjiii["hiroCamera_videws"]?.components(separatedBy: "@@@").first ,
           let videoURL = Bundle.main.path(forResource: videlinkg, ofType: "mp4") else{
           return
        }
       
        
        let Hirdishname = URL(fileURLWithPath: videoURL)
        
        BeginfPlayer(urlPathname: Hirdishname)
       
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
    private func DraverDance()  {
        self.posphereneHo.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(DervEDanceWithMusidfOff)))
        self.posphereneHo.insertSubview(self.playerMuiHird!.view, at: 0)
        playerMuiHird?.didMove(toParent: self)
        playerMuiHird?.fillMode = .resizeAspectFill
        
    }
    
    
 
    func BeginfPlayer(urlPathname:URL)  {
        self.playerMuiHird?.url = urlPathname
        
        self.playerMuiHird?.playbackLoops = true
        
        
        self.playerMuiHird?.playFromBeginning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.moreType = 0
        self.recordUserID = igjiii["hiroUID"]
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
        playerMuiHird = Player()
        self.playerMuiHird?.playerView.playerBackgroundColor = .clear
        self.addChild(self.playerMuiHird!)
        
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(DervEDanceWithMusidfOff)))
        self.view.insertSubview(self.playerMuiHird!.view, at: 0)
        playerMuiHird?.didMove(toParent: self)
        playerMuiHird?.fillMode = .resizeAspectFill
        
        
        AddHIRDIInitelayer()
        
        addGiftOliainer()
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
        guard let videlinkg = igjiii["hiroCamera_videws"]?.components(separatedBy: "@@@").last else{
           return
        }
      let perngs =  HiRoPickVieCSni.init(LinagkURE: videlinkg)
//        perngs.modalPresentationStyle = .overCurrentContext
        self.present(perngs, animated: true)
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
       let fokbo = HirdDVideoGistnteller.init()
       
       let presentVc = HiRoHandNAvigationPicdert.init(rootViewController:fokbo )
       
       fokbo.deleagte = self
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
       let presentVc = AddPickDanceController.init()
       
       self.present(presentVc, animated: true)
       
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
    
   
   @objc func DervEDanceWithMusidfOff()  {
        
       let statusd  = playerMuiHird?.playbackState
       
       
       if statusd == .stopped {
           
           playerMuiHird?.playFromBeginning()
           PlaysBuuteon.isHidden = true
       }else if  statusd == .paused {
           playerMuiHird?.playFromCurrentTime()
           PlaysBuuteon.isHidden = true
       }else {
           HiiidengDulendenf()
       }
       
//        switch self.playerMuiHird?.playbackState {
//        case .stopped:
//            playerMuiHird?.playFromBeginning()
//            PlaysBuuteon.isHidden = true
//          
//        case .paused:
//            playerMuiHird?.playFromCurrentTime()
//            PlaysBuuteon.isHidden = true
//        case .playing:
//            HiiidengDulendenf()
//            
//        case .failed:
//            HiiidengDulendenf()
//            
//        case .none:
//            break
//        }
    }
    func HiiidengDulendenf()  {
        playerMuiHird?.pause()
        PlaysBuuteon.isHidden = false
    }
    
    //MARK: - 送礼特效
    lazy var backgrounfsView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: self.view.frame.height, width: 280, height: 68))
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var giftContent:UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
       
        return pohn
    }()
    
    lazy var giftCountShing: UILabel = {
        let sdvsdfsa = UILabel.init()
        sdvsdfsa.text = "x 1"
        sdvsdfsa.textColor = UIColor.init(white: 1, alpha: 1)
        sdvsdfsa.font = UIFont.systemFont(ofSize: 24, weight: .black)
        return sdvsdfsa
    }()
    
    //送礼人头像
    lazy var giftsendaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 21
        pohn.layer.borderWidth =  1
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor.white.cgColor
        pohn.image = AppDelegate.magiehangiconseindi
        return pohn
    }()
    
    
    private func addGiftOliainer()  {
        view.addSubview(backgrounfsView)
        
        let iamg = UIImageView(image: UIImage.init(named: "shingGiftImageview"))
        backgrounfsView.addSubview(iamg)
        iamg.contentMode = .scaleToFill
        iamg.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
            make.width.equalTo(220)
            make.height.equalTo(52)
        }
        
        backgrounfsView.addSubview(giftsendaneHo)
        giftsendaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(42)
            make.leading.bottom.equalToSuperview()
            
        }
        let menamenba = UILabel.init()
        menamenba.text = "ME"
        menamenba.textColor = .white
        menamenba.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        backgrounfsView.addSubview(menamenba)
        menamenba.snp.makeConstraints { make in
            make.leading.equalTo(giftsendaneHo.snp.trailing).offset(10)
            make.top.equalTo(giftsendaneHo)
        }
        
        
        let sdvsdfsa = UILabel.init()
        sdvsdfsa.text = "Send a gift"
        sdvsdfsa.textColor = UIColor.init(white: 0.8, alpha: 1)
        sdvsdfsa.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        backgrounfsView.addSubview(sdvsdfsa)
        sdvsdfsa.snp.makeConstraints { make in
            make.leading.equalTo(giftsendaneHo.snp.trailing).offset(10)
            make.top.equalTo(menamenba.snp.bottom).offset(3)
        }
        
        backgrounfsView.addSubview(giftContent)
        giftContent.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(sdvsdfsa.snp.trailing).offset(18)
            make.width.equalTo(80)
            
        }
        backgrounfsView.addSubview(giftCountShing)
        giftCountShing.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(giftContent.snp.trailing).offset(12)
        }
        
    }
}


class HiRoPickVieCSni: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddInitelayer()
        
        view.addSubview(dismiaskfni)
        dismiaskfni.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.top.trailing.equalToSuperview().inset(20)
        }
    }
    var playerMuiHird: Player?
    deinit {
        playerMuiHird?.willMove(toParent: nil)
        
        VackINOFo()
        
    }
    private func DraverDance()  {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(DervEDanceWithMusidfOff)))
        self.view.insertSubview(self.playerMuiHird!.view, at: 0)
        playerMuiHird?.didMove(toParent: self)
        playerMuiHird?.fillMode = .resizeAspectFill
        
    }
    
    private  func VackINOFo()  {
        playerMuiHird?.view.removeFromSuperview()
        playerMuiHird?.removeFromParent()
    }
    
    lazy var dismiaskfni: UIButton = {
        let sdismie = UIButton.init()
        sdismie.setImage(UIImage.init(named: "dismiaojdall"), for: .normal)
        sdismie.addTarget(self, action: #selector(OSbacji), for: .touchUpInside)
        return sdismie
    }()
    
   @objc func OSbacji()  {
       self.dismiss(animated: true)
    }
    var LinagkURE:String
    init( LinagkURE: String) {
        
        self.LinagkURE = LinagkURE
        super.init(nibName: nil, bundle: nil)
    }
    
    required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var PlaysBuuteon: UIButton = {
        let ad = UIButton.init()
        ad.setImage(UIImage.init(named: "iconPoikio_play"), for: .normal)
        
        ad.isHidden = true
        ad.isUserInteractionEnabled = false
        return ad
    }()
   
    
    func AddInitelayer()  {
       
        
       
        guard let HHUaiURL = Bundle.main.path(forResource: LinagkURE, ofType: "mlpn4".poseRealStr()) else{
           return
        }
        playerMuiHird = Player()
        self.playerMuiHird?.playerView.playerBackgroundColor = .clear
        
        
        self.addChild(self.playerMuiHird!)
        DraverDance()
        
        let urlPathname = URL(fileURLWithPath: HHUaiURL)
        
        CfatirBuy(urlPathname:urlPathname)
        
        
    }
    
    private func CfatirBuy(urlPathname:URL)  {
        self.playerMuiHird?.url = urlPathname
        
        self.playerMuiHird?.playbackLoops = true
        self.playerMuiHird?.playFromBeginning()
    }
    
    
    @objc func DervEDanceWithMusidfOff()  {
         
        let statusd  = playerMuiHird?.playbackState
        
        
        if statusd == .stopped {
            
            playerMuiHird?.playFromBeginning()
            PlaysBuuteon.isHidden = true
        }else if  statusd == .paused {
            playerMuiHird?.playFromCurrentTime()
            PlaysBuuteon.isHidden = true
        }else {
            HiiidengDulendenf()
        }
            
         
         
     }
    
    
    func HiiidengDulendenf()  {
        playerMuiHird?.pause()
        PlaysBuuteon.isHidden = false
    }
     
}
