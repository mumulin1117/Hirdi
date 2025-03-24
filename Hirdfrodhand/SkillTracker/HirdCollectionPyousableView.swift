//
//  HirdCollectionPyousableView.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/21.
//

import UIKit

class HirdCollectionPyousableView: UICollectionReusableView {
    lazy var cameraPayHird: UIButton = {
        let chorePayHird = UIButton.init()
        chorePayHird.setBackgroundImage(UIImage.init(named: "circamera"), for: .normal)
        return chorePayHird
    }()
    
   
    
   
    lazy var choreAiHird: UIButton = {
        let chorePayHird = UIButton.init()
        chorePayHird.setBackgroundImage(UIImage.init(named: "choriAI"), for: .normal)
        return chorePayHird
    }()
    
    
    lazy var daceRecordAiHird: UIButton = {
        let chorePayHird = UIButton.init()
        chorePayHird.setBackgroundImage(UIImage.init(named: "chorireord"), for: .normal)
        return chorePayHird
    }()
    
    override init(frame: CGRect) {
        
       
        
        super.init(frame: frame)
        self.backgroundColor = .clear
        let hirdihird = UIImageView.init(image: UIImage.init(named: "hirDIed"))
        let motionihird = UIImageView.init(image: UIImage.init(named: "Motion Hird"))
        
        
        self.addSubview(cameraPayHird)
        self.addSubview(hirdihird)
        
        cameraPayHird.snp.makeConstraints { make in
            make.width.height.equalTo(45)
            make.trailing.equalToSuperview().inset(13)
            make.top.equalToSuperview().inset(5)
        }
        
        hirdihird.snp.makeConstraints { make in
            make.width.equalTo(115)
            make.height.equalTo(35)
            make.leading.equalToSuperview().inset(13)
            make.centerY.equalTo(cameraPayHird)
        }
        
        
       
       
        
        
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 6
        stack.distribution = .fillEqually
          
        stack.addArrangedSubview(choreAiHird)
        stack.addArrangedSubview(daceRecordAiHird)
        self.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(14)
            make.height.equalTo(167)
            make.top.equalTo(cameraPayHird.snp.bottom).offset(16)
        }
        
        
        self.addSubview(motionihird)
        motionihird.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.height.equalTo(22)
            make.top.equalTo(stack.snp.bottom).offset(19)
        }
        
        
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
