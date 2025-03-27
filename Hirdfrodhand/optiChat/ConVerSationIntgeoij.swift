//
//  ConVerSationIntgeoij.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/24.
//

import UIKit
//send mesaage
class ConVerSationIntgeoij: HiRoHRalFllaterPicdert,UITableViewDelegate,UITableViewDataSource {
    var shouleinger:ChatConversation
    
    init(shouleinger: ChatConversation) {
        self.shouleinger = shouleinger
        super.init(nibName: nil, bundle: nil)
        self.moreType = 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shouleinger.listMessage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let uioususf = tableView.dequeueReusableCell(withIdentifier: "ConVerjokeingViewCell", for: indexPath) as! ConVerjokeingViewCell
        
        uioususf.cokillConter.text = shouleinger.listMessage[indexPath.row].meaage
        
        uioususf.updatenewringLoadtion(wherer: shouleinger.listMessage[indexPath.row].isLoaguser)
        return uioususf
        
    }
    
    //头像
    lazy var cormaneHo: UIImageView = {
        let pohn = UIImageView.init()
        pohn.contentMode = .scaleAspectFill
        pohn.layer.cornerRadius = 28
        pohn.layer.borderWidth =  2
        pohn.layer.masksToBounds = true
        pohn.layer.borderColor = UIColor.white.cgColor
        return pohn
    }()
    
    
    // name
    let poonetLabe = UILabel.init()
    
    private lazy var inoupteTexfield: UITextField = {
        let juiy = UITextField.init()
        juiy.textColor = .white
        
        juiy.leftViewMode = .always
        juiy.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 20, height: 20))
        juiy.rightViewMode = .always
        
        let imgjurt = UIImageView.init(image: UIImage.init(named: "sentergu"))
        imgjurt.frame.size = CGSize.init(width: 68, height: 46)
        imgjurt.isUserInteractionEnabled = true
        imgjurt.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Amingkuiiiodfwer)))
        
        juiy.rightView = imgjurt
        
        juiy.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        juiy.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        juiy.textAlignment = .left
        juiy.layer.cornerRadius = 15
        juiy.layer.masksToBounds = true
        juiy.attributedPlaceholder = NSAttributedString(string: "Say something....", attributes: [.foregroundColor:UIColor.white])
        return juiy
    }()
    
    let reloapeoiurty = UITableView.init(frame: .zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.recordUserID = shouleinger.diploagUser["hiroUID"]
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        poonetLabe.textColor = .white
        poonetLabe.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        FDkokijixfhixf()
        Uhudhuing()
        reloapeoiurty.backgroundColor = .clear
        reallougoust()
        
        reloapeoiurty.separatorStyle = .none
        reloapeoiurty.dataSource = self
        reloapeoiurty.rowHeight = UITableView.automaticDimension
        reloapeoiurty.register(ConVerjokeingViewCell.self, forCellReuseIdentifier: "ConVerjokeingViewCell")
        reloapeoiurty.showsVerticalScrollIndicator = false
        poonetLabe.text  = shouleinger.diploagUser["hiroNlmer"] ?? ""
        cormaneHo.image = UIImage(named:shouleinger.diploagUser["hiroPociture"] ?? "" )
        
//        let imgjurt = UIImageView.init(image: UIImage.init(named: "sentergu"))
//        imgjurt.isUserInteractionEnabled = true
//        imgjurt.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(Amingkuiiiodfwer)))
//        
//        imgjurt.contentMode = .scaleAspectFill
//        inoupteTexfield.addSubview(imgjurt)
//        imgjurt.snp.makeConstraints { make in
//            make.trailing.equalToSuperview().inset(3)
//            make.width.equalTo(68)
//            make.height.equalTo(49)
//            make.centerY.equalToSuperview()
//        }
        let scene = UIApplication.shared.connectedScenes.first
        
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        view.addSubview(reloapeoiurty)
        reloapeoiurty.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(inoupteTexfield.snp.top)
            make.top.equalTo((window?.safeAreaInsets.top ?? 10) + 44 + 10 + 70 + 10)
        }
    }
    
    deinit {
        
    }
    
    func FDkokijixfhixf()  {
        NotificationCenter.default.addObserver(self, selector: #selector(delelUsert), name: NSNotification.Name.init("delelUsertHIRDI"), object: nil)
        

    }
    
     
    @objc func delelUsert() {
         self.navigationController?.popViewController(animated: true)
    }
    
    
    
    private func poeinuayud()  {
        reloapeoiurty.estimatedRowHeight = 50
        reloapeoiurty.backgroundColor = .clear
        reloapeoiurty.delegate = self
        reloapeoiurty.allowsSelection = false
       
       
        
    }
    func toTimeString(hirDate:Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        formatter.locale = Locale.current // 适配本地化格式
        formatter.timeZone = TimeZone.current
        return "Today " + formatter.string(from: hirDate)
        
    }
    //发送消息
    @objc func Amingkuiiiodfwer() {
        guard let ususyu = inoupteTexfield.text,ususyu.isEmpty == false else {
            self.addlayert(textCon: "Please enter content", controller: self,textColor: 2)
          
            return
        }
        let diologdata = MeasgeHird.init(timeDate: toTimeString(hirDate: Date()), isLoaguser: true, meaage: ususyu)
        
        self.shouleinger.listMessage.append(diologdata)
        
        
        ConVerSationLisrMan.shared.addnewrsermeaaage(measge: diologdata, diploagUser: shouleinger.diploagUser)
        self.inoupteTexfield.text = nil
        self.inoupteTexfield.resignFirstResponder()
        
        self.reloapeoiurty.reloadData()
    }

    func Uhudhuing()  {
        self.view.addSubview(self.inoupteTexfield)
        inoupteTexfield.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(52)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 20)
        }
    
    }

    
    func reallougoust() {
        let huiya = UIView()
        huiya.backgroundColor = UIColor(white: 1, alpha: 0.3)
        view.addSubview(huiya)
        
        let scene = UIApplication.shared.connectedScenes.first
        
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
    
       
        huiya.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(70)
            make.top.equalTo((window?.safeAreaInsets.top ?? 10) + 44 + 10)
        }
        
        huiya.addSubview(cormaneHo)
        cormaneHo.snp.makeConstraints { make in
            make.width.height.equalTo(56)
            make.leading.equalToSuperview().inset(18)
            make.centerY.equalToSuperview()
        }
        
        
        huiya.addSubview(poonetLabe)
        poonetLabe.snp.makeConstraints { make in
            
            make.leading.equalTo(cormaneHo.snp.trailing).offset(10)
            make.centerY.equalToSuperview()
        }
        
        
        let callGreen = UIButton.init()
        callGreen.setBackgroundImage(UIImage.init(named: "vioejicalll"), for: .normal)
        callGreen.addTarget(self, action: #selector(CaoigreenCall), for: .touchUpInside)
        huiya.addSubview(callGreen)
        callGreen.snp.makeConstraints { make in
            
            make.trailing.equalToSuperview().inset(15)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(46)
        }
    }
    
    
    @objc func CaoigreenCall()  {
        self.navigationController?.pushViewController(ConVerjocallShipkeingTxker.init(shouleinger: shouleinger.diploagUser), animated: true)
    }
}
