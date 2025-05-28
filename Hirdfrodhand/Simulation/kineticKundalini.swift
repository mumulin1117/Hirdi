//
//  kineticKundalini.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/21.
//

import UIKit

class kineticKundalini: UICollectionViewCell {
    //头像
    lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 28
        pohn.layer.borderWidth =  2
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor(red: 1, green: 0.28, blue: 0.89, alpha: 1).cgColor
        return pohn
    }()
    
    
    // name
    let poonetLabe = UILabel.init()
    
    
    lazy var puintEnterLabl: UILabel = {
        let nter = UILabel.init()
        nter.textColor = UIColor(white: 1, alpha: 0.7)
        nter.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        nter.textAlignment = .left
        return nter
    }()
    
    
    lazy var timwlasttEnterLabl: UILabel = {
        let nter = UILabel.init()
        nter.textColor = UIColor(white: 1, alpha: 0.7)
        nter.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        nter.textAlignment = .right
        return nter
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
       
        
        createCustomRoutine()
        
        contentView.addSubview(puintEnterLabl)
        puintEnterLabl.snp.makeConstraints { make in
            make.leading.equalTo(poonetLabe)
            make.width.lessThanOrEqualTo(200)
            make.top.equalTo(poonetLabe .snp.bottom).offset(7)
        }
        
        contentView.addSubview(timwlasttEnterLabl)
        timwlasttEnterLabl.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(14)
            make.top.equalTo(cormaneHo.snp.top)
        }
        
    }
     
    func createCustomRoutine()  {
        poonetLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        poonetLabe.textAlignment = .left
        
        
        contentView.addSubview(cormaneHo)
        contentView.addSubview(poonetLabe)
        cormaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(64)
            make.leading.equalToSuperview().offset(15)
            make.centerY.equalToSuperview()
        }
        poonetLabe.snp.makeConstraints { make in
            make.leading.equalTo(cormaneHo.snp.trailing).offset(14)
            make.top.equalTo(cormaneHo.snp.top).offset(5)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
