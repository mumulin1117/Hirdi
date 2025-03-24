//
//  ConVPanuekaioTxker.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/24.
//

import UIKit

class ConVPanuekaioTxker: HiRoHRalFllaterPicdert {
    private let Scrollowrwr = UIScrollView.init()
    private let contetnettttView = UIView.init()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreType = 4
        self.updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sudh = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
        
        abalance.text = sudh?["hiroBlance"]
        OAksjnhshhhhhhh()
       
    }
    private func OAksjnhshhhhhhh() {
      
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
       
       
        view.addSubview(Scrollowrwr)
        Scrollowrwr.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo((window?.safeAreaInsets.top ?? 0) + 40 + 24)
        }
        
        Scrollowrwr.backgroundColor = .clear
        
    
       
        contetnettttView.backgroundColor = .clear
        Scrollowrwr.addSubview(contetnettttView)
        contetnettttView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(1000)
        }
    
       
        contetnettttView.addSubview(self.blanceButttoen)
        
        blanceButttoen.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset(8)
            make.height.equalTo(86)
            make.width.equalTo(345)
        }
        blanceButttoen.addSubview(self.abalance)
        abalance.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(46)
        }
        let Imagrijg = UIView.init()
        Imagrijg.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        Imagrijg.layer.cornerRadius = 16
        Imagrijg.layer.masksToBounds = true
        
        contetnettttView.addSubview(Imagrijg)
        Imagrijg.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(blanceButttoen.snp.bottom).offset(20)
            make.height.equalTo(800)
        }
    }

}
