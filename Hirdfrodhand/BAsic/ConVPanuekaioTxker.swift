//
//  ConVPanuekaioTxker.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/24.
//
import SwiftyStoreKit
import UIKit

class ConVPanuekaioTxker: HiRoHRalFllaterPicdert {
    private let Scrollowrwr = UIScrollView.init()
    private let contetnettttView = UIView.init()
    
    lazy var abalance: UILabel = {
        let mIgub = UILabel.init()
        mIgub.textColor = .black
        mIgub.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        
       
        return mIgub
    }()
    //blaance
    private  lazy var blanceButttoen: UIButton = {
        let ssss = UIButton.init()
        ssss.setBackgroundImage(UIImage.init(named: "muiahudg"), for: .normal)
       
        
        let mIgub = UILabel.init()
        mIgub.textColor = .black
        mIgub.font = UIFont.systemFont(ofSize: 17, weight: .black)
        mIgub.text = "My wallet >"
        ssss.addSubview(mIgub)
        mIgub.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(20)
            
        }
        return ssss
    }()
    
    
    private var oiupio:Array<(Int,String,String)>  = Array<(Int,String,String)>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreType = 3
        
        OAksjnhshhhhhhh()
        oiupio = [(400,"$0.99","yzvbredvcccdvlzd"),
                  (800,"$1.99","zzmufwhvhqoamioo"),
                  (2450,"$4.99","vhlfjxwbgxcmhrcr"),
                  (2930,"$5.99",""),
                  (4900,"$9.99","fesewsonxmpmcpyn"),
                  (9800,"$19.99","lryikudmrpybsyue"),
                  (13600,"$29.99",""),
                  (24500,"$49.99","twwdumpapznanuml"),
                  (34250,"$69.99",""),
                  (49000,"$99.99","evmllxdbgsngcbfc")]
        self.updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
        
        for (o,itr) in oiupio.enumerated() {
            let ndui = camjkscamp(info: itr)
            
            contetnettttView.addSubview(ndui)
            ndui.tag = o
            ndui.addTarget(self, action: #selector(cdfterINgtag(dkxkd: )), for: .touchUpInside)
            
            ndui.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview()
                make.height.equalTo(80)
                make.top.equalToSuperview().offset(80*o  + 15)
            }
        }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sudh = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
        
        abalance.text = sudh?["hiroBlance"]
        
       
    }
   
    
    private func camjkscamp(info:(Int,String,String))->UIButton {
        let ssss = UIButton.init()
        ssss.backgroundColor = .clear
       
        let IA = UIImageView(image: UIImage.init(named: "diowebp"))
        IA.contentMode = .scaleAspectFit
        ssss.addSubview(IA)
        IA.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24)
            make.width.height.equalTo(40)
            make.centerY.equalToSuperview()
        }
        
        
        let mIgub = UILabel.init()
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        mIgub.text = "+\(info.0)"
        ssss.addSubview(mIgub)
        mIgub.snp.makeConstraints { make in
            make.leading.equalTo(IA.snp.trailing).offset(12)
            make.centerY.equalToSuperview()
            
        }
        
        
        let trailingIA = UIImageView(image: UIImage.init(named: "Toskliop"))
        trailingIA.contentMode = .scaleAspectFit
        ssss.addSubview(trailingIA)
        trailingIA.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(20)
            make.width.equalTo(87)
            make.height.equalTo(36)
            make.centerY.equalToSuperview()
        }
        
        
        
        let moneygub = UILabel.init()
        moneygub.textColor = .white
        moneygub.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        moneygub.text = info.1
        ssss.addSubview(moneygub)
        moneygub.snp.makeConstraints { make in
            make.centerX.equalTo(trailingIA)
            make.centerY.equalToSuperview()
            
        }
        
        let bottrom = UIView.init()
        bottrom.backgroundColor = .white
        ssss.addSubview(bottrom)
        bottrom.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview()
            make.height.equalTo(1)
        }
        return ssss
    }

    
    @objc func cdfterINgtag(dkxkd:UIButton) {
        let taginsepick = dkxkd.tag
        
        let Fadg = oiupio[taginsepick]
        
        self.view.isUserInteractionEnabled = false
        
        let statuslbl = self.addlayert(textCon: "Paying...",controller: self,timedelay: nil)
       
       
     
        SwiftyStoreKit.purchaseProduct(Fadg.2, atomically: true) { psResult in
            statuslbl?.removeFromSuperview()
            
            if case .success(let psPurch) = psResult {
                let psdownloads = psPurch.transaction.downloads
                if !psdownloads.isEmpty {
                    SwiftyStoreKit.start(psdownloads)
                }
                
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
                
             

                self.addlayert(textCon:  "pay successful!" ,controller: self,textColor: 1)
               
                var sudh = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
                
                var akidonah = Int(sudh?["hiroBlance"] ?? "0") ?? 0
                
                akidonah = akidonah + (Fadg.0 ?? 0)

                self.abalance.text = "\(akidonah)"
               
              
                
                
                sudh?["hiroBlance"] = "\(akidonah)"
                        
                UserDefaults.standard.set(sudh, forKey: "logeduserhiedIndj")
                
                UserDefaults.standard.set(sudh, forKey: sudh?["hiroUID"] ?? "")

            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                  
                    return
                }
                self.addlayert(textCon: error.localizedDescription, controller: self,textColor: 2)
               
            }
        }
        
    }
}







extension ConVPanuekaioTxker{
    private func OAksjnhshhhhhhh() {
      
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
       
       
        view.addSubview(Scrollowrwr)
        Scrollowrwr.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.bottom.equalToSuperview()
            make.top.equalTo((window?.safeAreaInsets.top ?? 0) + 40 + 24)
        }
        
        Scrollowrwr.backgroundColor = .clear
        
        Scrollowrwr.addSubview(self.blanceButttoen)
        Scrollowrwr.addSubview(contetnettttView)
        
        blanceButttoen.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(8)
            make.height.equalTo(86)
           
        }
        contetnettttView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width - 30)
            make.height.equalTo(800)
            make.top.equalTo(self.blanceButttoen.snp.bottom).offset(20)
            make.bottom.equalToSuperview()
        }
        
        
       
        contetnettttView.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        contetnettttView.layer.cornerRadius = 16
        contetnettttView.layer.masksToBounds = true
        
        
       
    
       
       
        blanceButttoen.addSubview(self.abalance)
        abalance.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(46)
        }
       
      
    }
}
