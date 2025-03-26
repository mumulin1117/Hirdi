//
//  HirdMotionSquareCell.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/21.
//

import UIKit

class HirdMotionSquareCell: UICollectionViewCell {
    
    
    //背景
    lazy var posphereneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 16
        pohn.layer.borderWidth =  1
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1).cgColor
        return pohn
    }()
    
    
    //头像
    lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 20
        pohn.layer.borderWidth =  1
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1).cgColor
        return pohn
    }()
    
    //举报
    lazy var morepportAiHird: UIButton = {
        let chorePayHird = UIButton.init()
        chorePayHird.setBackgroundImage(UIImage.init(named: "repowedgink"), for: .normal)
        return chorePayHird
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
        return chorePayHird
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posphereneHo)
        posphereneHo.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        connectWithDancerProfile()
        
        
        self.backgroundColor = .clear
        
        self.layer.masksToBounds = true
        
        discoverTrendingMoves()
    }
    
    func connectWithDancerProfile()  {
        
        poonetLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        poonetLabe.textAlignment = .left
        
        
        contentView.addSubview(cormaneHo)
        cormaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.leading.equalToSuperview().inset(9)
            make.top.equalToSuperview().inset(9)
        }
        contentView.addSubview(poonetLabe)
        poonetLabe.snp.makeConstraints { make in
            make.leading.equalTo(cormaneHo.snp.trailing).offset(7)
            make.centerY.equalTo(cormaneHo)
        }
        
        contentView.addSubview(morepportAiHird)
        morepportAiHird.snp.makeConstraints { make in
            
            make.top.right.equalToSuperview().inset(10)
            make.width.height.equalTo(30)
        }
        
        contentView.addSubview(paoiseAiHird)
        paoiseAiHird.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(12)
            make.height.equalTo(32)
            make.width.equalTo(32)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
    
    
    func discoverTrendingMoves()  {
        dympictLabe.numberOfLines = 2
        dympictLabe.textColor = .white
        dympictLabe.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        dympictLabe.textAlignment = .left
        contentView.addSubview(dympictLabe)
        dympictLabe.snp.makeConstraints { make in
            
            make.leading.equalToSuperview().inset(9)
            make.bottom.equalToSuperview().offset(-12)
            make.trailing.equalTo(paoiseAiHird.snp.leading).offset(-16)
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
