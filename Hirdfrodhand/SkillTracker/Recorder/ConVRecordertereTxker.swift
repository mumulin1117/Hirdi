//
//  ConVPAEdioatereTxker.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/25.
//

import UIKit

//Record
class ConVRecordertereTxker: HiRoHRalFllaterPicdert {
    private let IAa = UIImageView.init(image: UIImage.init(named: "Make the movement sm"))
    
    
    private lazy var  UIamgn : UIImageView = {
        let xf = UIImageView.init()
        xf.layer.cornerRadius = 15
        xf.isUserInteractionEnabled = true
        xf.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(OSK)))
        xf.layer.masksToBounds = true
        xf.contentMode = .scaleAspectFill
        xf.image = UIImage.init(named: "Mineloguer_con")
        let cornView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: 146, height: 57))
        cornView.image = UIImage(named: "advafbfbsbs")
        xf.addSubview(cornView)
        return xf
    }()
    
    private lazy var danceNmrelabl: UILabel = {
        let mIgub = UILabel.init(frame: CGRect.init(x: 10, y: 0, width: 146, height: 47))
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 17, weight: .medium)
       
        return mIgub
    }()
    
    
    private lazy var danceTimelabl: UILabel = {
        let mIgub = UILabel.init()
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        return mIgub
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.moreType = 4
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        
        let reportButton = UIBarButtonItem(
            image: UIImage(named: "upkoadRecored")?.withRenderingMode(.alwaysOriginal),
            style: .plain,
            target: self,
            action: #selector(UpaloadingRecorenow))
            
            
      
        navigationItem.rightBarButtonItem = reportButton
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        
        IAa.contentMode = .scaleAspectFit
        view.addSubview(IAa)
        IAa.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.top.equalToSuperview().offset((window?.safeAreaInsets.top ?? 0 ) + 40 + 20)
            make.width.equalTo(220)
            make.height.equalTo(56)
        }
        
        AddIniteDanceRecord()
    }
    
    
    @objc func OSK()  {
        self.navigationController?.pushViewController(ConVPDetailRecoerreTxker.init(), animated: true)
    }
    
  @objc  func UpaloadingRecorenow()  {
      
      
      self.navigationController?.pushViewController(ConVPBesginRecoerdreTxker.init(), animated: true)
      
      
  }
    
    
    private func AddIniteDanceRecord() {
        
        view.addSubview(UIamgn)
        UIamgn.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(IAa.snp.bottom).offset(15)
            make.height.equalTo(249)
        }
        let startPoint = CGPoint(x: 0, y: 57)
                
        let endPoint = CGPoint(x: 146, y: 0)
        
        // 计算旋转角度
              
        let deltaY = endPoint.y - startPoint.y
        let deltaX = endPoint.x - startPoint.x
        let angle = atan2(deltaY, deltaX)
        self.UIamgn.addSubview(danceNmrelabl)
        danceNmrelabl.center = CGPoint(x: 146/2, y: 47/2)
        danceNmrelabl.transform = CGAffineTransform(rotationAngle: angle)
        danceNmrelabl.text = "One Gest"
        UIamgn.addSubview(self.danceTimelabl)
        danceTimelabl.snp.makeConstraints { make in
            make.trailing.top.equalToSuperview().inset(12)
            
        }
        danceTimelabl.text =  "2025:03:20"
    }
    
   
}
