//
//  HiRoVidertlTracker.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/20.
//

import UIKit
import MJRefresh
import AVFoundation
class HiRoVidertlTracker: HolePicdwei ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width - 15*2 - 9)/2, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let protalHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HirdMVideoUploadView", for: indexPath) as! HirdMVideoUploadView
            
            protalHeader.cameraPayHird.addTarget(self, action: #selector(uploVideorreChallenge), for: .touchUpInside)
           
            return protalHeader
        }
        return UICollectionReusableView()
    }
    //upload video
    @objc func uploVideorreChallenge()  {
        
        
    }
    
    
    var superGert:Array<Dictionary<String,String>> = []
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.superGert.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let igjiii = self.superGert[indexPath.row]
        
        let GestureMaster = collectionView.dequeueReusableCell(withReuseIdentifier: "HirdMVideoAhuCell", for: indexPath) as! HirdMVideoAhuCell
       
        
        GestureMaster.cormaneHo.image = UIImage(named: igjiii["hiroPociture"] ?? "")
        GestureMaster.poonetLabe.text =  igjiii["hiroNlmer"]
        GestureMaster.dympictLabe.text =  igjiii["hiroCamera_dym"]
        
        if let videlinkg = igjiii["hiroCamera_videws"]?.components(separatedBy: "@@@").first{
            GestureMaster.posphereneHo.image = HiRoHandPicdert.chacheImage[videlinkg]
        }
        
         
        return GestureMaster
        
    }
    
    lazy var collectionViewIWei: UICollectionView = {
        let Cloauout = UICollectionViewFlowLayout.init()
        Cloauout.itemSize = CGSize(width: (UIScreen.main.bounds.width - 15*2 - 9)/2, height: 250)
        Cloauout.minimumLineSpacing = 9
        Cloauout.minimumInteritemSpacing = 9
        Cloauout.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width - 15*2, height: 94 + 20 + 22 + 24)
        Cloauout.scrollDirection = .vertical
        let colapView = UICollectionView.init(frame: .zero, collectionViewLayout: Cloauout)
        colapView.register(HirdMVideoUploadView.self, forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HirdMVideoUploadView")
        
        colapView.register(HirdMVideoAhuCell.self, forCellWithReuseIdentifier: "HirdMVideoAhuCell")
        colapView.showsVerticalScrollIndicator = false
        colapView.delegate = self
        colapView.dataSource = self
        colapView.backgroundColor = .clear
        colapView.contentInset = UIEdgeInsets(top: 0, left: 15, bottom: 100, right: 15)
        colapView.mj_header = MJRefreshNormalHeader(refreshingBlock: {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                let newrBatle = AppDelegate.totalinguseindi.filter { fsssss in
                    return fsssss["hiroCamera_videws"] != nil
                }
                
                guard newrBatle.count >= 4 else {
                    self.superGert =  newrBatle.shuffled()
                    return
                   }
                   
                   // 随机打乱数组并取前四个元素
                self.superGert = Array(newrBatle.shuffled().prefix(4))
              
                self.collectionViewIWei.reloadData()
                self.collectionViewIWei.mj_header?.endRefreshing()
                
            }))
            
        })
        colapView.showsHorizontalScrollIndicator = false
        colapView.contentInsetAdjustmentBehavior = .never
    
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
