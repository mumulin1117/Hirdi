//
//  HirdMVideoUploadView.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/21.
//

import UIKit

class HirdMVideoUploadView: UICollectionReusableView {
    lazy var cameraPayHird: UIButton = {
        let chorePayHird = UIButton.init()
        chorePayHird.setBackgroundImage(UIImage.init(named: "ubloadviewr"), for: .normal)
        return chorePayHird
    }()
    
   
    
   
   
    
    override init(frame: CGRect) {
        
       
        
        super.init(frame: frame)
        self.backgroundColor = .clear
        let hirdihird = UIImageView.init(image: UIImage.init(named: "corelaiu"))
        
        
        self.addSubview(cameraPayHird)
        cameraPayHird.addSubview(hirdihird)
        
        cameraPayHird.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(94)
            make.top.equalToSuperview().offset(10)
          
        }
        
        hirdihird.snp.makeConstraints { make in
            make.width.equalTo(34)
            make.height.equalTo(22)
           
            make.top.equalToSuperview().offset(20)
            make.centerX.equalToSuperview()
        }
        
        let label = UILabel()
       
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textAlignment = .center
        label.text = "+Video Release"
        label.textColor = UIColor.white
       
        cameraPayHird.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(hirdihird.snp.bottom).offset(10)
        }
        
        let Dacehirdihird = UIImageView.init(image: UIImage.init(named: "Dance PK Room"))
        Dacehirdihird.contentMode = .scaleAspectFit
        addSubview(Dacehirdihird)
        Dacehirdihird.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalTo(cameraPayHird.snp.bottom).offset(20)
            make.width.equalTo(136)
            make.height.equalTo(22)
        }
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
