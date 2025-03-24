//
//  HiRoHandHomelTracker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//
import MJRefresh
import UIKit
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
class HiRoHandHomelTracker: HolePicdwei ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 17*2, height: 186 + 45 + 19 + 22 + 13)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let protalHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "hoayiHeader", for: indexPath) as! HirdCollectionPyousableView
            
            protalHeader.cameraPayHird.addTarget(self, action: #selector(startGestureChallenge), for: .touchUpInside)
            protalHeader.cameraPayHird.addTarget(self, action: #selector(analyzeAIFeedback), for: .touchUpInside)
            
            protalHeader.cameraPayHird.addTarget(self, action: #selector(competeInRealTime), for: .touchUpInside)
           
            return protalHeader
        }
        return UICollectionReusableView()
    }
    //camera
    @objc func startGestureChallenge()  {
        
        
    }
    //AI
    @objc func analyzeAIFeedback()  {
        
        
    }
    
    //Record
    @objc func competeInRealTime()  {
        
        
    }
    
    var superGert:Array<Dictionary<String,String>> = []
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.superGert.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let igjiii = self.superGert[indexPath.row]
        
        let GestureMaster = collectionView.dequeueReusableCell(withReuseIdentifier: "HirdMotionSquareCell", for: indexPath) as! HirdMotionSquareCell
        GestureMaster.posphereneHo.image = UIImage(named: igjiii["hiroDamicImage"] ?? "")
        GestureMaster.cormaneHo.image = UIImage(named: igjiii["hiroPociture"] ?? "")
        GestureMaster.poonetLabe.text =  igjiii["hiroNlmer"]
        GestureMaster.dympictLabe.text =  igjiii["hiroDamicTitle"]
        GestureMaster.paoiseAiHird.isSelected = (igjiii["hiroifprize"] == "hhhh")
        
        return GestureMaster
        
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
        
       
    }
    

   

}


extension HiRoHandHomelTracker{
    
    
    //点赞
    @objc func gestureParseeChallenge()  {
        
        collectionViewIWei.reloadData()
    }
    //举报
    @objc func azeReportack()  {
        
        
    }
    
   
}
