//
//  HiRoWChailkcker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//

import UIKit
import MJRefresh





class HiRoWChailkcker: HolePicdwei,UICollectionViewDelegate,UICollectionViewDataSource, HirdMChatHeaderViewDelegate {
   
    var exsistDilog:[ChatConversation]{
        ConVerSationLisrMan.shared.conversations.filter { ChatConversation in
            ChatConversation.listMessage.count > 0
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionViewIWei.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 17*2, height: 186 + 45 + 19 + 22 + 13)
    }
    
    //顶部user点击
    func didPicjTopuser(offline: Dictionary<String, String>) {
        self.navigationController?.pushViewController(ConVUserCekaioTxker.init(shouleinger: offline), animated: true) 
    }
    
    private var headerViewShing:HirdMChatHeaderView?
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let protalHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HirdMChatHeaderView", for: indexPath) as! HirdMChatHeaderView
            protalHeader.pushremote.addTarget(self, action: #selector(remotepushnRealTime), for: .touchUpOutside)
           
            protalHeader.delefeGater = self
            headerViewShing = protalHeader
            return protalHeader
        }
        return UICollectionReusableView()
    }
   
    
    //push
    @objc func remotepushnRealTime()  {
        
        
    }
    
//    var superGert:Array<Dictionary<String,String>> = []
//    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.exsistDilog.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //聊天详情
        let Converds = ConVerSationIntgeoij.init(shouleinger: self.exsistDilog[indexPath.row])
        self.navigationController?.pushViewController(Converds, animated: true)
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let igjiii = self.exsistDilog[indexPath.row]
        
        let GestureMaster = collectionView.dequeueReusableCell(withReuseIdentifier: "HirdMMeassgecello", for: indexPath) as! HirdMMeassgecello
        GestureMaster.cormaneHo.image = UIImage(named: igjiii.diploagUser["hiroPociture"] ?? "")
//        GestureMaster.cormaneHo.image = UIImage(named: igjiii["hiroPociture"] ?? "")
        GestureMaster.poonetLabe.text =  igjiii.diploagUser["hiroNlmer"]
        GestureMaster.puintEnterLabl.text = igjiii.listMessage.first?.meaage
        
        GestureMaster.timwlasttEnterLabl.text = igjiii.listMessage.first?.timeDate
        
//        GestureMaster.dympictLabe.text =  igjiii["hiroDamicTitle"]
//        GestureMaster.paoiseAiHird.isSelected = (igjiii["hiroifprize"] == "hhhh")
//        
        return GestureMaster
        
    }
    
    lazy var collectionViewIWei: UICollectionView = {
        let Cloauout = UICollectionViewFlowLayout.init()
        Cloauout.itemSize = CGSize.init(width: UIScreen.main.bounds.width , height: 85)
        Cloauout.minimumLineSpacing = 1
        Cloauout.minimumInteritemSpacing = 1
        Cloauout.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width - 17*2, height: 200 + 13)
        Cloauout.scrollDirection = .vertical
        let colapView = UICollectionView.init(frame: .zero, collectionViewLayout: Cloauout)
        colapView.register(HirdMChatHeaderView.self, forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HirdMChatHeaderView")
        colapView.register(HirdMMeassgecello.self, forCellWithReuseIdentifier: "HirdMMeassgecello")
        colapView.showsVerticalScrollIndicator = false
        colapView.delegate = self
        colapView.dataSource = self
        colapView.backgroundColor = .clear
       
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
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(regteerDataOnseve), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
       
    }
    
    @objc func regteerDataOnseve() {
       
        headerViewShing?.collectionViewIWei.reloadData()
        self.collectionViewIWei.reloadData()
        self.collectionViewIWei.mj_header?.endRefreshing()
    }
    
    

   

}
