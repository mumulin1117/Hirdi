//
//  ConVPAdviceAITxker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/25.
//

import UIKit
import PopupDialog
class ConVPAdviceAITxker: HiRoHRalFllaterPicdert,UITextViewDelegate {
    var AllDAnceStyle:Array<UIButton> = Array<UIButton>()
    var AllDMusicStyle:Array<UIButton> = Array<UIButton>()
    
    let auIJf = UILabel.init()
    private lazy var contertCsire: UITextView = {
        let DOg = UITextView()
        DOg.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        DOg.delegate = self
        DOg.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 15, right: 15)
        DOg.textColor = .white
        DOg.text = "Please enter a personalised move or a blend of styles..."
        DOg.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        return DOg
    }()
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
        
        if let image = UIImage(named: "SaiPAckimg") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        let toptitleimage = UIImageView(image: UIImage.init(named: "ChoreoHand AI"))
        toptitleimage.contentMode = .scaleAspectFit
        view.addSubview(toptitleimage)
        toptitleimage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(116)
            make.height.equalTo(20)
            make.centerY.equalTo((window?.safeAreaInsets.top ?? 0) + 20 )
        }
        
        
            
        auIJf.numberOfLines = 0
        auIJf.text = "Please provide descriptions\nfor the hand dance you want.   "
        auIJf.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        auIJf.textColor = .white
        auIJf.textAlignment = .center
        
        auIJf.layer.masksToBounds = true
        auIJf.layer.cornerRadius = 16
        auIJf.layer.borderColor = UIColor(red: 0, green: 1, blue: 0.61, alpha: 1).cgColor
        auIJf.layer.borderWidth = 1
        
        view.addSubview(auIJf)
        auIJf.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(70)
            make.top.equalTo(toptitleimage.snp.bottom).offset(70)
        }
        
        NormalJiuad()
        fodeleteoutrINgtag()
        AddddSaveg()
        
        AddDanceStyle()
        AddMusicStyle()
    }
    
    func AddddSaveg()  {
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        let slkjdf = UIImageView(image: UIImage.init(named: "diowebp"))
        slkjdf.contentMode = .scaleToFill
        
        let Loaojgi = UIButton.init()
        Loaojgi.setBackgroundImage(UIImage.init(named: "menbanfhu"), for: .normal)
        Loaojgi.setTitle( "Create 200", for: .normal)
        Loaojgi.setTitleColor(.black, for: .normal)
        Loaojgi.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight:.semibold)
        Loaojgi.addTarget(self, action: #selector(AllfoiCreate), for: .touchUpInside)
        view.addSubview(Loaojgi)
        
        Loaojgi.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0)  - 25)
        }
        Loaojgi.addTarget(self, action: #selector(fodeleteoutrINgtag), for: .touchUpInside)
        
        Loaojgi.addSubview(slkjdf)
        slkjdf.snp.makeConstraints { make in
            make.width.height.equalTo(40)
            make.leading.equalToSuperview().inset(14)
            make.top.equalToSuperview().offset(-8)
        }
        
        
    }
   
    var recordDanceStyle:String = ""
    var recordMusicStyle:String = ""
    
    
    @objc func AllfoiCreate()  {
        AllDAnceStyle.forEach { utton in
            if utton.isSelected && utton.titleLabel?.text?.isEmpty == false{
                recordDanceStyle = utton.titleLabel?.text ?? ""
            }
        }
        
        AllDMusicStyle.forEach { utton in
            if utton.isSelected && utton.titleLabel?.text?.isEmpty == false{
                recordMusicStyle = utton.titleLabel?.text ?? ""
            }
        }
        
        
        guard let enterEmi = contertCsire.text,
        enterEmi.isEmpty == false,enterEmi != "Please enter a personalised move or a blend of styles..." else {
            self.addlayert(textCon: "Please enter a personalised move or a blend of styles...", controller: self,textColor: 2)
            
             return
         }
        
        
        var hirdiUsering = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
        
        var akidonah = Int(hirdiUsering?["kineticSync"] ?? "0") ?? 0
        

        let nnedMonet = 200

        if akidonah >= nnedMonet {
            akidonah -= nnedMonet
            hirdiUsering?["kineticSync"] = "\(akidonah)"
                    
            UserDefaults.standard.set(hirdiUsering, forKey: "logeduserhiedIndj")
            
            
            
            
            var dokf = "Please generate a gesture dance guide of at least 300 words based on my needs. The guide text should preferably include analyzable universal expressions and be provided to me in segments and sections. My needs are:"
            
            var danceStyle = "Dance Style is " + self.recordDanceStyle + ". "
            var musicStyle = "Music Style is " + self.recordMusicStyle + ". "
            
            var customStyle = "Customization options " + enterEmi  + ". "
            UserDefaults.standard.set(hirdiUsering, forKey: hirdiUsering?["hiroUID"] ?? "")
            
            self.navigationController?.pushViewController(ConVAiGEtmITxker.init(descRequest: dokf + danceStyle + musicStyle + customStyle), animated: true)
            
        }else{
            let popup = PopupDialog(
                title: "Ignqszuhfbftidcziwewnttb tByailcaanacqe".poseRealStr(),
                message: "Tuhuizsy vfreqahtaucrtey xrdefqauhitrfezsm q2h0r0b xdeidajmyofnmdhsb jtjoe hbueg huosrendz.rWyofuflidg hyaorud mlnihkjek ztiog orfevclhmacrkgfek iaxngdy aujstei mihtc?".poseRealStr(),
                transitionStyle: .zoomIn,  // 弹窗缩放动画
                tapGestureDismissal: false // 禁用点击背景关闭
            )
            popup.view.backgroundColor = .systemBackground
            popup.view.layer.cornerRadius = 12
           

            // 充值按钮（主操作）
            let beatBender = DefaultButton(
                title: "Gvog jRzegcxhsaarugze".poseRealStr(),
                height: 50,
                action: {
                    self.navigationController?.pushViewController(TechnicalMastery(), animated: true)
                }
            )

            // 取消按钮（次要操作）
            let cancelButton = CancelButton(
                title: "Clabngcnezl".poseRealStr(),
                height: 50,
                action: nil
            ) 

            // 添加按钮并设置布局
            popup.addButtons([beatBender, cancelButton])
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

    private func BUhfButtonHirdi(xf:String) -> UIButton {
        let Niakfo = UIButton.init()
        Niakfo.setTitle(xf, for: .normal)
        Niakfo.setTitleColor(.white, for: .normal)
        Niakfo.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        Niakfo.setBackgroundImage(UIImage.init(named: "Clorfulert_fulsidhsud"), for: .normal)
        Niakfo.setBackgroundImage(UIImage.init(named: "Clorfulert_ful"), for: .selected)
        Niakfo.addTarget(self, action: #selector(geuminceStyle(geumi:)), for: .touchUpInside)
        return Niakfo
    }
    @objc func geuminceStyle(geumi:UIButton)  {
        let contetnt = geumi.titleLabel?.text ?? "Freestyle"
        
        if ["Pop","Street","Contemporary","Freestyle","K-pop"].contains(contetnt){
            AllDAnceStyle.forEach { buj in
                buj.isSelected = false
            }
        }else{
            AllDMusicStyle.forEach { buj in
                buj.isSelected = false
            }
        }
        
       
        geumi.isSelected = true
    }
    
   
    
    
    func AddMusicStyle()  {
        let pop = BUhfButtonHirdi(xf: "Upbeat")
        pop.isSelected = true
        AllDMusicStyle.append(pop)
        self.Screool.addSubview(pop)
        pop.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(89)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(160 + 23 + 10)
        }
        
        
        let pop1 = BUhfButtonHirdi(xf: "Chill")
        AllDMusicStyle.append(pop1)
        self.Screool.addSubview(pop1)
        pop1.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15 + 89 + 10)
            make.width.equalTo(69)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(160 + 23 + 10)
        }
        
        
        let pop2 = BUhfButtonHirdi(xf: "Electronic")
        AllDMusicStyle.append(pop2)
        self.Screool.addSubview(pop2)
        pop2.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15 + 89 + 10 + 69 + 10)
            make.width.equalTo(107)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(160 + 23 + 10)
        }
        
        
        let pop3 = BUhfButtonHirdi(xf: "Hip-hop")
        AllDMusicStyle.append(pop3)
        self.Screool.addSubview(pop3)
        pop3.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(97)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset((160 + 23 + 10) + 46 + 10)
        }
        
        
        let pop4 = BUhfButtonHirdi(xf: "Classical")
        AllDMusicStyle.append(pop4)
        self.Screool.addSubview(pop4)
        pop4.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15 + 97 + 10)
            make.width.equalTo(100)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset((160 + 23 + 10) + 46 + 10)
        }
    }
    
    
    private let Screool = UIScrollView.init()
    func NormalJiuad() {
        
        Screool.backgroundColor = .clear
        
        view.addSubview(Screool)
        Screool.snp.makeConstraints { make in
            make.top.equalTo(auIJf.snp.bottom).offset(20)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        
        
        
        
        
        
        
    }
    
    //创建
    @objc func fodeleteoutrINgtag() {
        let sstylef = UIImageView(image: UIImage.init(named: "Dance Style"))
        sstylef.contentMode = .scaleAspectFit
        
        Screool.addSubview(sstylef)
        sstylef.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(104)
            make.height.equalTo(23)
            make.top.equalToSuperview()
        }
        
        let musicylef = UIImageView(image: UIImage.init(named: "Music Type"))
        musicylef.contentMode = .scaleAspectFit
        
        Screool.addSubview(musicylef)
        musicylef.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(98)
            make.height.equalTo(23)
            make.top.equalToSuperview().offset(160)
        }
        
        let optioncylef = UIImageView(image: UIImage.init(named: "Customization Option"))
        optioncylef.contentMode = .scaleAspectFit
        Screool.addSubview(optioncylef)
        optioncylef.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(198)
            make.height.equalTo(23)
            make.top.equalToSuperview().offset(160 + 160)
        }
        contertCsire.layer.cornerRadius = 16
        contertCsire.layer.masksToBounds = true
        Screool.addSubview(contertCsire)
        contertCsire.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width - 30)
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(120)
            make.top.equalToSuperview().offset(160 + 160 + 23 + 15)
            make.bottom.equalToSuperview().offset(-150)
            
        }
    }
    
    
    
    func AddDanceStyle()  {
        let pop = BUhfButtonHirdi(xf: "Pop")
        pop.isSelected = true
        AllDAnceStyle.append(pop)
        self.Screool.addSubview(pop)
        pop.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(67)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(23 + 10)
        }
        
        
        let pop1 = BUhfButtonHirdi(xf: "Street")
        AllDAnceStyle.append(pop1)
        self.Screool.addSubview(pop1)
        pop1.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15 + 67 + 10)
            make.width.equalTo(67)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(23 + 10)
        }
        
        
        let pop2 = BUhfButtonHirdi(xf: "Contemporary")
        AllDAnceStyle.append(pop2)
        self.Screool.addSubview(pop2)
        pop2.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15 + 67 + 10 + 81 + 10)
            make.width.equalTo(136)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(23 + 10)
        }
        
        
        let pop3 = BUhfButtonHirdi(xf: "Freestyle")
        AllDAnceStyle.append(pop3)
        self.Screool.addSubview(pop3)
        pop3.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(101)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(23 + 10 + 46 + 10)
        }
        
        
        let pop4 = BUhfButtonHirdi(xf: "K-pop")
        AllDAnceStyle.append(pop4)
        self.Screool.addSubview(pop4)
        pop4.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15 + 101 + 10)
            make.width.equalTo(67)
            make.height.equalTo(46)
            make.top.equalToSuperview().offset(23 + 10 + 46 + 10)
        }
    }
}
