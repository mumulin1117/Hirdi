//
//  ConVPDetailRecoerreTxker.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/25.
//

import UIKit

class ConVPDetailRecoerreTxker: HiRoHRalFllaterPicdert {
    
    
    private lazy var  UIamgn : UIImageView = {
        let xf = UIImageView.init()
       
        xf.contentMode = .scaleAspectFill
        xf.image = UIImage.init(named: "Dpnati7")
        
        xf.layer.masksToBounds = true
        return xf
    }()
    
    private lazy var danceNmrelabl: UILabel = {
        let mIgub = UILabel.init()
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        mIgub.text = "One Gest"
        return mIgub
    }()
    
    
    private lazy var danceTimelabl: UILabel = {
        let mIgub = UILabel.init()
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 50, weight: .medium)
        
        return mIgub
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.moreType = 4
        
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        view.addSubview(UIamgn)
        UIamgn.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(vaABacking), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
       
        
        UpaloadingRecorenow()
        AddIniteDanceRecord()
    }
    
    
    @objc func vaABacking()  {
        self.navigationController?.popViewController(animated: true)
    }
    
  @objc  func UpaloadingRecorenow()  {
      let scene = UIApplication.shared.connectedScenes.first
      let windowScene = scene as? UIWindowScene
      let window = windowScene?.windows.first
      
      self.UIamgn.addSubview(danceNmrelabl)
      danceNmrelabl.snp.makeConstraints { make in
          make.leading.equalToSuperview().inset(15)
          make.top.equalToSuperview().offset((window?.safeAreaInsets.top ?? 0) + 55)
      }
     
      
      
      
  }
    
    
    private func AddIniteDanceRecord() {
        danceTimelabl.text =  "2025:03:20"
        UIamgn.addSubview(self.danceTimelabl)
        danceTimelabl.snp.makeConstraints { make in
            make.top.equalTo(danceNmrelabl.snp.bottom).offset(20)
            make.leading.equalTo(danceNmrelabl)
            
        }
       
    }
    
   
}
