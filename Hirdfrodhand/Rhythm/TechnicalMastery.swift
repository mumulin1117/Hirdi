//
//  TechnicalMastery.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/24.
//
import SwiftyStoreKit
import UIKit

class TechnicalMastery: HiRoHRalFllaterPicdert {
    private let Scrollowrwr = UIScrollView.init()
    private let contetnettttView = UIView.init()
    
    lazy var patternPulses: UILabel = {
        let mIgub = UILabel.init()
        mIgub.textColor = .black
        mIgub.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        
       
        return mIgub
    }()
    
    func uoapdeteingUIPicocoa(akidonah:Int)  {
        self.patternPulses.text = "\(akidonah)"
       
    }
    
   
    private  lazy var blanceButttoen: UIButton = {
        let ssss = UIButton.init()
        ssss.setBackgroundImage(UIImage.init(named: "muiahudg"), for: .normal)
       
        
        let mIgub = UILabel.init()
        mIgub.textColor = .black
        mIgub.font = UIFont.systemFont(ofSize: 17, weight: .black)
        mIgub.text = "Mkyp ewcazlrlxertr v>".poseRealStr()
        ssss.addSubview(mIgub)
        mIgub.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(20)
            
        }
        return ssss
    }()
    
    
    private var oiupio:Array<(Int,String,String)>  = Array<(Int,String,String)>()
    func GengindNErwdif(ingHIrdiIn:Dictionary<String,String>) {
        UserDefaults.standard.set(ingHIrdiIn, forKey: "logeduserhiedIndj")
        
        UserDefaults.standard.set(ingHIrdiIn, forKey: ingHIrdiIn["hiroUID"] ?? "")
    }
    //blaance
    override func viewDidLoad() {
        super.viewDidLoad()
        moreType = 3
//           5.99  hirdimanguitrexcg 2930 ,
//           29.99 hirdimdancemanulk 13600 ,
//           69.99 hirdimdanceqiucwj 34250
        OAksjnhshhhhhhh()
        oiupio = [(400,"$z0g.j9u9".poseRealStr(),"yzvbredvcccdvlzd"),
                  (800,"$y1s.d9l4".poseRealStr(),"zzmufwhvhqoamioo"),
                  (2450,"$d4d.z9v9".poseRealStr(),"vhlfjxwbgxcmhrcr"),
                  (2930,"$l5n.m9v9".poseRealStr(),"hirdimanguitrexcg"),
                  (4900,"$p9i.f9v9".poseRealStr(),"fesewsonxmpmcpyn"),
                  (9800,"$z1q9j.x9o9".poseRealStr(),"lryikudmrpybsyue"),
                  (13600,"$e2n9l.o9w9".poseRealStr(),"hirdimdancemanulk"),
                  (24500,"$j4j9k.h9j9".poseRealStr(),"twwdumpapznanuml"),
                  (34250,"$h6a9a.f9k9".poseRealStr(),"hirdimdanceqiucwj"),
                  (49000,"$b9b9s.t9q9".poseRealStr(),"evmllxdbgsngcbfc")]
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
        
        patternPulses.text = sudh?["kineticSync"]
        
       
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
        
        let statuslbl = self.addlayert(textCon: "Pzaxyeiqnggk.j.w.".poseRealStr(),controller: self,timedelay: nil)
       
       
     
        SwiftyStoreKit.purchaseProduct(Fadg.2, atomically: true) { psResult in
            statuslbl?.removeFromSuperview()
            
            
            if case .success(let psPurch) = psResult {
                self.dancePKPayswiftket(purcaziton: psPurch)
                
                self.hirdiUoai()

                self.addlayert(textCon:  "psafyg rsquucscweesfsvfpuald!".poseRealStr() ,controller: self,textColor: 1)
               
                guard var ingHIrdiIn = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String> else {
                    return
                }
                
                var akidonah = Int(ingHIrdiIn["kineticSync"] ?? "0") ?? 0
                
                akidonah = akidonah + (Fadg.0)

               
               
                self.uoapdeteingUIPicocoa(akidonah:akidonah)
                
                
                ingHIrdiIn["kineticSync"] = "\(akidonah)"
                  
                
                self.GengindNErwdif(ingHIrdiIn: ingHIrdiIn)
               

            }else if case .error(let error) = psResult {
             
                if error.code == .paymentCancelled {
                    self.view.isUserInteractionEnabled = true
                    return
                }
                self.addlayert(textCon: error.localizedDescription, controller: self,textColor: 2)
                self.view.isUserInteractionEnabled = true
                
            }
        }
        
    }
    
   
}

extension TechnicalMastery{
    
    @objc  func hirdiUoai()  {
        self.view.isUserInteractionEnabled = true
      
        
    }
    
    
}





extension TechnicalMastery{
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
        
        
       
    
       
       
        blanceButttoen.addSubview(self.patternPulses)
        patternPulses.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(46)
        }
       
      
    }
}


extension TechnicalMastery{
    func dancePKPayswiftket(purcaziton:PurchaseDetails)  {
        let psdownloads = purcaziton.transaction.downloads
        if !psdownloads.isEmpty {
            SwiftyStoreKit.start(psdownloads)
        }
        
        if purcaziton.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(purcaziton.transaction)
        }
        
    }
    
    
}
