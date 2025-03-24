//
//  ConVerjokeingViewCell.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/24.
//

import UIKit

class ConVerjokeingViewCell: UITableViewCell {
     lazy var cokillConter: UILabel = {
        let chioker = UILabel.init()
        chioker.numberOfLines = 0
        chioker.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        chioker.textColor = .black
        chioker.backgroundColor = .clear
        return chioker
    }()
    
    let uanij = UIView()
    
    
    func updatenewringLoadtion(wherer:Bool) {
        if wherer == true {
            uanij.backgroundColor = .white
            cokillConter.textColor = .black
            uanij.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner,.layerMinXMaxYCorner]
            cokillConter.snp.remakeConstraints { make in
                make.trailing.equalToSuperview().inset(15 + 20)
                make.top.bottom.equalToSuperview().inset(10 + 8)
                make.width.lessThanOrEqualTo(265)
                make.width.greaterThanOrEqualTo(45)
            }
            
            uanij.snp.remakeConstraints { make in
                make.trailing.equalTo(cokillConter.snp.trailing).offset(14)
                make.bottom.equalTo(cokillConter.snp.bottom).offset(10)
                make.top.equalTo(cokillConter.snp.top).offset(-10)
                make.leading.equalTo(cokillConter.snp.leading).offset(-10)
            }
            
        }else{
            uanij.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
            cokillConter.textColor = .white
            uanij.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner,.layerMaxXMaxYCorner]
            cokillConter.snp.remakeConstraints { make in
                make.leading.equalToSuperview().inset(15 + 20)
                make.top.bottom.equalToSuperview().inset(10 + 8)
                make.width.lessThanOrEqualTo(265)
                make.width.greaterThanOrEqualTo(45)
            }
            
            uanij.snp.remakeConstraints { make in
                make.leading.equalTo(cokillConter.snp.leading).offset(-14)
                make.bottom.equalTo(cokillConter.snp.bottom).offset(10)
                make.top.equalTo(cokillConter.snp.top).offset(-10)
                make.trailing.equalTo(cokillConter.snp.trailing).offset(10)
            }
            
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        
        self.backgroundColor = .clear
        uanij.layer.cornerRadius = 10
       
        contentView.addSubview(uanij)
       
        contentView.addSubview(self.cokillConter)
        cokillConter.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(15 + 20)
            make.top.bottom.equalToSuperview().inset(10 + 8)
            make.width.lessThanOrEqualTo(265)
            make.width.greaterThanOrEqualTo(45)
        }
        
        uanij.snp.makeConstraints { make in
            make.trailing.equalTo(cokillConter.snp.trailing).offset(14)
            make.bottom.equalTo(cokillConter.snp.bottom).offset(10)
            make.top.equalTo(cokillConter.snp.top).offset(-10)
            make.leading.equalTo(cokillConter.snp.leading).offset(-10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

   

}
