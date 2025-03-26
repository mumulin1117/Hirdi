//
//  HirdDVideoGistnteller.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/26.
//

import UIKit

class HirdDVideoGistnteller: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    private let needcounatDiomentLabel = UILabel.init()
    var Itag:Int = 0
    
    let AKdoj = ["gist cream","gist_beer","gist_castle","gist_flower","gist_heart","gistlollipop","gistprocket","gisttcar"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AKdoj.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sdfkcell = collectionView.dequeueReusableCell(withReuseIdentifier: "HirdDVideoGiftCell", for: indexPath) as! HirdDVideoGiftCell
        sdfkcell.counatLabel.text = "199"
        sdfkcell.hsinwImageView.image = UIImage(named: AKdoj[indexPath.row])
        return sdfkcell
        
    }
    
    lazy var sgiftView: UICollectionView = {
        
        let adk = UICollectionViewFlowLayout()
        let kmd = (UIScreen.main.bounds.width - 28 - 8*3)/4
        adk.itemSize = CGSize(width: kmd, height: 100)
        adk.minimumInteritemSpacing = 8
        adk.minimumLineSpacing = 8
        adk.scrollDirection = .vertical
        let drag = UICollectionView.init(frame: .zero, collectionViewLayout: adk)
        drag.showsVerticalScrollIndicator = false
        drag.delegate = self
        drag.dataSource = self
        drag.backgroundColor = .clear
        drag.register(HirdDVideoGiftCell.self, forCellWithReuseIdentifier: "HirdDVideoGiftCell")
        return drag
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
//        self.view.alpha = 0.52
        
        
        let Bootime = UIView.init()
        Bootime.backgroundColor = UIColor(red: 0.16, green: 0.16, blue: 0.27, alpha: 1)
        Bootime.layer.cornerRadius = 16
        
        Bootime.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
        
        view.addSubview(Bootime)
        Bootime.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(410)
        }
        
        
        Bootime.addSubview(sgiftView)
        sgiftView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(14)
            make.top.equalToSuperview().offset(20)
            make.height.equalTo(210)
        }
        
        let himageImageView = UIImageView(image: UIImage.init(named: "diowebp"))
        himageImageView.contentMode = .scaleToFill
        Bootime.addSubview(himageImageView)
        himageImageView.snp.makeConstraints { make in
            make.height.width.equalTo(20)
            make.leading.equalToSuperview().inset(15)
            make.top.equalTo(sgiftView.snp.bottom).offset(30)
        }
        
        
        needcounatDiomentLabel.textColor = .white
        needcounatDiomentLabel.font = UIFont.systemFont(ofSize: 16)
        
        Bootime.addSubview(needcounatDiomentLabel)
        needcounatDiomentLabel.snp.makeConstraints { make in
            make.leading.equalTo(himageImageView.snp.trailing).offset(10)
            make.centerY.equalTo(Bootime)
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        Itag = indexPath.row
    }

}


class HirdDVideoGiftCell: UICollectionViewCell {
    private var PauinBack = UIImageView()
    
    let hsinwImageView = UIImageView()
    let counatLabel = UILabel.init()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        counatLabel.textColor = .white
        counatLabel.font = UIFont.systemFont(ofSize: 13)
        counatLabel.textAlignment = .center
        contentView.addSubview(hsinwImageView)
        hsinwImageView.snp.makeConstraints { make in
            make.width.height.equalTo(65)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(7)
        }
        contentView.addSubview(counatLabel)
        PauinBack.contentMode = .scaleToFill
        PauinBack.image = UIImage(named: "srgsdfsdc")
        contentView.addSubview(PauinBack)
        PauinBack.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
        
        counatLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-16)
            make.top.equalTo(hsinwImageView.snp.bottom).offset(3)
            
        }
        
        let himageImageView = UIImageView(image: UIImage.init(named: "diowebp"))
        contentView.addSubview(himageImageView)
       
        himageImageView.snp.makeConstraints { make in
            make.width.height.equalTo(12)
            make.leading.equalTo(counatLabel.snp.trailing).offset(4)
            make.centerY.equalTo(counatLabel)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var isSelected: Bool{
        didSet{
            if isSelected == false {
                PauinBack.image = UIImage(named: "srgsdfsdc")
            }else{
                PauinBack.image = UIImage(named: "Hightersdfg_k")
            }
        }
    }
}
