//
//  DikshaMandalaHeaderView.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/21.
//

import UIKit
protocol DikshaMandalaViewDelegate {
    func didPicjTopuser(offline:Dictionary<String,String>)
}


class DikshaMandalaHeaderView: UICollectionReusableView,UICollectionViewDelegate,UICollectionViewDataSource {
    var delefeGater:DikshaMandalaViewDelegate?
    
    
    var superGert:Array<Dictionary<String,String>>{
        AppDelegate.totalinguseindi
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        superGert.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let heaf = collectionView.dequeueReusableCell(withReuseIdentifier: "digitalDhyanaTattva", for: indexPath) as! VewantadColid
        heaf.cormaneHo.image = UIImage.init(named: superGert[indexPath.row]["hiroPociture"] ?? "")
        heaf.poonetLabe.text = superGert[indexPath.row]["hiroNlmer"]
        return heaf
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cnopisjk =  superGert[indexPath.row]
        
        if delefeGater != nil {
            self.delefeGater?.didPicjTopuser(offline: cnopisjk)
        }
    }
    lazy var pushremote: UIButton = {
        let chorePayHird = UIButton.init()
        chorePayHird.setBackgroundImage(UIImage.init(named: "remoatenoti"), for: .normal)
        return chorePayHird
    }()
    
    lazy var collectionViewIWei: UICollectionView = {
        let Cloauout = UICollectionViewFlowLayout.init()
        Cloauout.itemSize = CGSize.init(width: 110, height: 117)
        Cloauout.minimumLineSpacing = 10
        Cloauout.minimumInteritemSpacing = 10
      
        Cloauout.scrollDirection = .horizontal
        let colapView = UICollectionView.init(frame: .zero, collectionViewLayout: Cloauout)
       
        colapView.register(VewantadColid.self, forCellWithReuseIdentifier: "digitalDhyanaTattva")
        
        colapView.delegate = self
        colapView.dataSource = self
        colapView.backgroundColor = .clear
        
        colapView.showsHorizontalScrollIndicator = false
        colapView.contentInsetAdjustmentBehavior = .never
        colapView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return colapView
    }()
    
   
    
    override init(frame: CGRect) {
        
       
        
        super.init(frame: frame)
        self.backgroundColor = .clear
        let hirdihird = UIImageView.init(image: UIImage.init(named: "meaasgeuio"))
         
        
        self.addSubview(pushremote)
        self.addSubview(hirdihird)
        
        pushremote.snp.makeConstraints { make in
            make.width.height.equalTo(45)
            make.trailing.equalToSuperview().inset(13)
            make.top.equalToSuperview().inset(5)
        }
        
        hirdihird.snp.makeConstraints { make in
            make.width.equalTo(156)
            make.height.equalTo(35)
            make.leading.equalToSuperview().inset(13)
            make.centerY.equalTo(pushremote)
        }
        
        self.addSubview(collectionViewIWei)
        collectionViewIWei.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(pushremote.snp.bottom).offset(6)
            make.height.equalTo(117)
        }
       
       
    
        
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class VewantadColid: UICollectionViewCell {
    //头像
    lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 28
        pohn.layer.borderWidth =  1
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1).cgColor
        return pohn
    }()
    
    
    // name
    let poonetLabe = UILabel.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        let ChibeView = UIView.init()
        ChibeView.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        ChibeView.layer.cornerRadius = 16
        ChibeView.layer.masksToBounds = true
        contentView.addSubview(ChibeView)
        ChibeView.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview()
            make.top.trailing.equalToSuperview().inset(7)
        }
        
        createCustomRoutine()
        
        let Imgd = UIImageView(image: UIImage.init(named: "ToprjDianji"))
        Imgd.contentMode = .scaleToFill
        contentView.addSubview(Imgd)
        Imgd.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.top.trailing.equalToSuperview()
        }
    }
     
    func createCustomRoutine()  {
        poonetLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        poonetLabe.textAlignment = .center
        
        
        contentView.addSubview(cormaneHo)
        contentView.addSubview(poonetLabe)
        cormaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(56)
            make.top.equalToSuperview().offset(29)
            make.centerX.equalToSuperview().offset(-3)
        }
        poonetLabe.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(cormaneHo.snp.bottom).offset(8)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
