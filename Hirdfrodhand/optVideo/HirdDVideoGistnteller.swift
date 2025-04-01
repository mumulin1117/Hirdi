//
//  HirdDVideoGistnteller.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/26.
//

import UIKit
import PopupDialog
protocol HirdDVideoGistntellerGibeDele {
    func figtNameGiven(name:String,count:Int)
}
/// 送礼
class HirdDVideoGistnteller: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var deleagte:HirdDVideoGistntellerGibeDele?
    
    private let needcounatDiomentLabel = UILabel.init()
    var Itag:Int = 0
    
    
    var GisftCount:Int = 0//礼物数量
    let countLabel = UILabel.init()
    
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
    private let Bootime = UIView.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        //        self.view.alpha = 0.52
        
        
        
        Bootime.backgroundColor = UIColor(red: 0.16, green: 0.16, blue: 0.27, alpha: 1)
        Bootime.layer.cornerRadius = 16
        
        Bootime.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
        
        view.addSubview(Bootime)
        Bootime.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(350)
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
        needcounatDiomentLabel.text = "\(self.Itag * 199)"
        Bootime.addSubview(needcounatDiomentLabel)
        needcounatDiomentLabel.snp.makeConstraints { make in
            make.leading.equalTo(himageImageView.snp.trailing).offset(10)
            make.centerY.equalTo(himageImageView)
        }
        
        sgiftView.selectItem(at: IndexPath.init(row: 0, section: 0), animated: false, scrollPosition: .top)
        
        addNewapop()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        Itag = indexPath.row
    }
    @objc func sureGiventGisft()  {
        if self.GisftCount <= 0 {
            return
            
        }
        
        var sudh = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
        
        var akidonah = Int(sudh?["hiroBlance"] ?? "0") ?? 0
        

        let nnedMonet = self.GisftCount * 199

        
        if akidonah >= nnedMonet {
            akidonah -= nnedMonet
            sudh?["hiroBlance"] = "\(akidonah)"
            
            UserDefaults.standard.set(sudh, forKey: "logeduserhiedIndj")
            
          
            
            
            self.dismiss(animated: true)
            self.deleagte?.figtNameGiven(name: self.AKdoj[self.Itag], count: GisftCount)
            UserDefaults.standard.set(sudh, forKey: sudh?["hiroUID"] ?? "")
        }else{
            let popup = PopupDialog(
                title: "🪙 Insufficient Balance",
                message: "Would you like to recharge and use it?",
                transitionStyle: .zoomIn,  // 弹窗缩放动画
                tapGestureDismissal: false // 禁用点击背景关闭
            )
            popup.view.backgroundColor = .systemBackground
            popup.view.layer.cornerRadius = 12
            
            
            // 充值按钮（主操作）
            let rechargeButton = DefaultButton(
                title: "Go Recharge 💎",
                height: 50,
                action: {
                    self.navigationController?.pushViewController(ConVPanuekaioTxker(), animated: true)
                }
            )
            
            // 取消按钮（次要操作）
            let cancelButton = CancelButton(
                title: "Clabngcnezl".poseRealStr(),
                height: 50,
                action: nil
            )
            
            // 添加按钮并设置布局
            popup.addButtons([rechargeButton, cancelButton])
            popup.buttonAlignment = .vertical // 垂直排列按钮
            
            // 呈现弹窗（带弹性动画）
            present(popup, animated: true) {
                popup.view.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5) {
                    popup.view.transform = .identity
                }
            }
        }
        
    }
    
    
    @objc func addNewapop()  {
    
        let backBagimg = UIImageView(image: UIImage.init(named: "oprationeCountabg"))
        backBagimg.isUserInteractionEnabled = true
        backBagimg.contentMode = .scaleToFill
        
        Bootime.addSubview(backBagimg)
        backBagimg.snp.makeConstraints { make in
            make.width.equalTo(205)
            make.height.equalTo(36)
            make.trailing.equalToSuperview().inset(15)
            make.top.equalTo(self.sgiftView.snp.bottom).offset(24)
        }
        
        let presentbutton = UIButton.init()
        presentbutton.setTitle("Give Present", for: .normal)
        presentbutton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        presentbutton.setTitleColor(.white, for: .normal)
        backBagimg.addSubview(presentbutton)
        presentbutton.addTarget(self, action: #selector(sureGiventGisft), for: .touchUpInside)
        presentbutton.snp.makeConstraints { make in
            make.trailing.top.bottom.equalToSuperview()
            make.width.equalTo(102.5)
        }
        
        
        let addtbutton = UIButton.init()
        addtbutton.setTitle("+", for: .normal)
        addtbutton.setTitleColor(.white, for: .normal)
        backBagimg.addSubview(addtbutton)
        addtbutton.addTarget(self, action: #selector(Adlllllll), for: .touchUpInside)
        addtbutton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24 + 38)
           
            make.height.width.equalTo(24)
            make.centerY.equalToSuperview()
        }
        
        let descbutton = UIButton.init()
        descbutton.setTitle("-", for: .normal)
        descbutton.setTitleColor(.white, for: .normal)
        backBagimg.addSubview(descbutton)
        descbutton.addTarget(self, action: #selector(descshaolllllll), for: .touchUpInside)
        
        descbutton.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.height.width.equalTo(24)
            make.centerY.equalToSuperview()
        }
        countLabel.textAlignment = .center
        countLabel.textColor = .white
        countLabel.font = UIFont.systemFont(ofSize: 16)
        countLabel.text = "\(GisftCount)"
        backBagimg.addSubview(countLabel)
        countLabel.snp.makeConstraints { make in
            make.leading.equalTo(descbutton.snp.trailing)
            make.trailing.equalTo(addtbutton.snp.leading)
            make.centerY.equalToSuperview()
        }
        
     
        
        
    }
    
    
    @objc  func Adlllllll()  {
        GisftCount += 1
        self.countLabel.text = "\(GisftCount)"
        needcounatDiomentLabel.text = "\(self.GisftCount * 199)"
    }
      
    
    
    @objc  func descshaolllllll()  {
          
        if GisftCount > 0 {
            GisftCount -= 1
            self.countLabel.text = "\(GisftCount)"
            needcounatDiomentLabel.text = "\(self.GisftCount * 199)"
        }
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
