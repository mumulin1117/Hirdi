//
//  HiRoHandHomelTracker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//
import MJRefresh
import UIKit
import PopupDialog
var statusBarHeight: CGFloat {
    if #available(iOS 13.0, *) {
        let windowScene = UIApplication.shared.connectedScenes
            .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene
        return windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    } else {
        return UIApplication.shared.statusBarFrame.height
    }
}


/// 首页
class HiRoHandHomelTracker: HolePicdwei ,UICollectionViewDelegate,UICollectionViewDataSource, HirdDuiayINmContellerDelegate{
    func uoapfasdtecomment() {
        regteerDataOnseve()
    }
    
    
    @objc func regteerDataOnseve() {
        guard AppDelegate.totalinguseindi.count >= 4 else {
            self.superGert =  AppDelegate.totalinguseindi
            self.collectionViewIWei.reloadData()
            return
           }
           
           // 随机打乱数组并取前四个元素
        self.superGert = Array(AppDelegate.totalinguseindi.prefix(4))
        
        self.collectionViewIWei.reloadData()
    }
  
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 17*2, height: 186 + 45 + 19 + 22 + 13)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let protalHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "hoayiHeader", for: indexPath) as! HirdCollectionPyousableView
            
            protalHeader.cameraPayHird.addTarget(self, action: #selector(startGestureChallenge), for: .touchUpInside)
            protalHeader.choreAiHird.addTarget(self, action: #selector(analyzeAIFeedback), for: .touchUpInside)
            
            protalHeader.daceRecordAiHird.addTarget(self, action: #selector(startRecordcealTime), for: .touchUpInside)
            
            return protalHeader
        }
        return UICollectionReusableView()
    }
   
    //camera
    @objc func startGestureChallenge()  {
        self.navigationController?.pushViewController(ConVShareDmITxker.init(), animated: true)
        
    }
    
    //AI
    @objc func analyzeAIFeedback()  {
        
        self.navigationController?.pushViewController(ConVPAdviceAITxker.init(), animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        
        
        
    }
    
    
  
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    //Record
    @objc func startRecordcealTime()  {
        self.navigationController?.pushViewController(ConVRecordertereTxker.init(), animated: true)
        
    }
    
    var superGert:Array<Dictionary<String,String>> = []
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.superGert.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let Zhuwei = self.superGert[indexPath.row]
        
        let zdvc = HirdDuiayINmConteller.init(igjiii: Zhuwei, ismecenet: false)
        zdvc.delegate = self
        self.navigationController?.pushViewController(zdvc, animated: true)
        
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let igjiii = self.superGert[indexPath.row]
        
        let GestureMaster = collectionView.dequeueReusableCell(withReuseIdentifier: "HirdMotionSquareCell", for: indexPath) as! HirdMotionSquareCell
        GestureMaster.posphereneHo.image = UIImage(named: igjiii["hiroDamicImage"] ?? "")
        GestureMaster.cormaneHo.image = UIImage(named: igjiii["hiroPociture"] ?? "")
        GestureMaster.poonetLabe.text =  igjiii["hiroNlmer"]
        GestureMaster.dympictLabe.text =  igjiii["hiroDamicTitle"]
        GestureMaster.paoiseAiHird.isSelected =  (igjiii["Laikethimonent"] == "1") ? true : false
        GestureMaster.paoiseAiHird.tag = indexPath.row
        GestureMaster.paoiseAiHird.addTarget(self, action: #selector(BeginFaveriteing(dfg: )), for: .touchUpInside)
        GestureMaster.morepportAiHird.tag = indexPath.row
        GestureMaster.morepportAiHird.addTarget(self, action: #selector(Reportuoauddare(brickID:)), for: .touchUpInside)
        return GestureMaster
        
        
    }
    
    //report
    @objc private func Reportuoauddare(brickID:UIButton)  {
        let igjiii = self.superGert[brickID.tag]
        
        
        self.popitiwieu(ifDer: igjiii["hiroUID"] ?? "", moreType: 0)

       
    }
    @objc func BeginFaveriteing(dfg:UIButton)  {
        
        let HDuhg = dfg.tag
        var igjiii = self.superGert[HDuhg]
        
        dfg.isSelected = !dfg.isSelected
        
        igjiii["Laikethimonent"] = dfg.isSelected ? "1" : "0"
        
       
        for (ssdj,itemr) in AppDelegate.totalinguseindi.enumerated() {
            if itemr["hiroUID"] == igjiii["hiroUID"] {
                AppDelegate.totalinguseindi[ssdj] = igjiii
            }
        }
        
        regteerDataOnseve()
     }
    
    lazy var collectionViewIWei: UICollectionView = {
        let Cloauout = UICollectionViewFlowLayout.init()
        Cloauout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 17*2, height: 233)
        Cloauout.minimumLineSpacing = 17
        Cloauout.minimumInteritemSpacing = 17
        Cloauout.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width - 17*2, height: 186 + 45 + 19 + 22 + 13)
        Cloauout.scrollDirection = .vertical
        let colapView = UICollectionView.init(frame: .zero, collectionViewLayout: Cloauout)
        colapView.register(HirdCollectionPyousableView.self, forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: "hoayiHeader")
        colapView.register(HirdMotionSquareCell.self, forCellWithReuseIdentifier: "HirdMotionSquareCell")
        colapView.showsVerticalScrollIndicator = false
        colapView.delegate = self
        colapView.dataSource = self
        colapView.backgroundColor = .clear
        colapView.mj_header = MJRefreshNormalHeader(refreshingBlock: {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                
                guard AppDelegate.totalinguseindi.count >= 4 else {
                    self.superGert =  AppDelegate.totalinguseindi.shuffled()
                    self.collectionViewIWei.reloadData()
                    self.collectionViewIWei.mj_header?.endRefreshing()
                    return
                   }
                   
                   // 随机打乱数组并取前四个元素
                self.superGert = Array(AppDelegate.totalinguseindi.shuffled().prefix(4))
                
                self.collectionViewIWei.reloadData()
                self.collectionViewIWei.mj_header?.endRefreshing()
                
            }))
            
        })
        colapView.showsHorizontalScrollIndicator = false
        colapView.contentInsetAdjustmentBehavior = .never
        colapView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        return colapView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.collectionViewIWei)
       
        let scene = UIApplication.shared.connectedScenes.first
                  
         
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
    
        collectionViewIWei.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo( window?.safeAreaInsets.top ?? 10)
        }
        
        self.collectionViewIWei.mj_header?.beginRefreshing()
        NotificationCenter.default.addObserver(self, selector: #selector(regteerDataOnseve), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
        
    }
    
   
  
   

}


extension UIViewController{
    
    func popitiwieu(ifDer:String,moreType:Int) {
       
       
        if moreType == 1 {
            self.XcreteasdReport(moreType: 1)
            return
        }
        
        let popup = PopupDialog(
            title:"Report or Block \((moreType == 0 || moreType == 4) ? "Content" : "User")",
            message: "After blocking, the \(((moreType == 0 || moreType == 4) ? "Content" : "User")) will no longer be displayed"
        )
        
        
        let ReportButton = CancelButton(title: "Report") {
            self.XcreteasdReport(moreType: moreType)
        }
            
        
        let deleteButton = DestructiveButton(title: "Block") {
            let statuslbl = self.addlayert(textCon: "Blocking...",controller: self,timedelay: nil)
             
             DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                 for (ssdj,itemr) in AppDelegate.totalinguseindi.enumerated() {
                     if itemr["hiroUID"] == ifDer{
                         AppDelegate.totalinguseindi.remove(at: ssdj)
                     }
                 }
                 ConVerSationLisrMan.shared.conversations = ConVerSationLisrMan.shared.conversations.filter({ ChatConversation in
                     ChatConversation.diploagUser["hiroUID"] != ifDer
                 })
                 if moreType == 4 {
                     AppDelegate.IfRemoveRecord =  true
                 }
                 NotificationCenter.default.post(name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
                 
                 statuslbl?.removeFromSuperview()
                
                 self.addlayert(textCon: "Block completed!",controller: self,textColor: 1)
                 
             }))
        }
        let canceButton = DestructiveButton(title: "Cancel", dismissOnTap: true, action: nil)
      
        popup.addButtons([ReportButton, deleteButton,canceButton])
        present(popup, animated: true, completion: nil)
       
    }
    
    private func XcreteasdReport(moreType:Int)  {
        let Reporting = PopupDialog(
            title:moreType == 1 ? "Report AI content" : "Report Reason",
            message: "Please select the reason you want to report"
        )
        
        var allButtongs = [DestructiveButton]()
        
        ["Spam or misleading content","Harassment or bullying","Hate speech or symbols","Violence or harm","Nudity or explicit content"].forEach { ssfd in
            let reasongButton = DestructiveButton(title: ssfd) {
                let statuslbl = self.addlayert(textCon: "Requesting...",controller: self,timedelay: nil)
                 
                 DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
                 
                     statuslbl?.removeFromSuperview()
                    
                     self.addlayert(textCon: "Thank you for your supervision. We will verify and handle it as soon as possible!",controller: self,textColor: 1)
                     
                 }))
            }
            
            allButtongs.append(reasongButton)
           
        }
        
        
        let canceButton = DestructiveButton(title: "Cancel", dismissOnTap: true, action: nil)
        
        allButtongs.append(canceButton)
       
        Reporting.addButtons(allButtongs)
        self.present(Reporting, animated: true)
    }
   
}
