//
//  HiRoHandNEmialPicdert.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//

import UIKit
import SnapKit

//log email
class HiRoHandNEmialPicdert: UIViewController {
   @objc func upadaterinnoti()  {
        if UserDefaults.standard.object(forKey: "addkoplpoiu") as? Bool == true{
            centerHIR.isSelected  = true
        }else{
            centerHIR.isSelected  = false
        }
    }
    lazy var centerHIR: UIButton = {
        let buert = UIButton.init()
        buert.setImage(UIImage.init(named: "purpler_hiro"), for: .normal)
        buert.setImage(UIImage.init(named: "purGour_hiro"), for: .selected)
        buert.addTarget(self, action: #selector(addkoplpoiu), for: .touchUpInside)
        return buert
    }()
    
    
    @objc func addkoplpoiu()  {
        centerHIR.isSelected = !centerHIR.isSelected
        
        UserDefaults.standard.setValue(centerHIR.isSelected, forKey: "addkoplpoiu")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage(named: "hanfledance") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
       
        
        HardEmailSetn()
        
        
        startGestureChallenge()
        
        startLoaginChallenge()
        NotificationCenter.default.addObserver(self, selector: #selector(upadaterinnoti), name: NSNotification.Name.init("upadaterinnoti"), object: nil)
        
    }
   
   

    private func HardEmailSetn() {
        let emialELUA = UILabel.init()
        emialELUA.isUserInteractionEnabled = true
        emialELUA.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapingerdert)))
        emialELUA.textColor = .white
        emialELUA.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        let attr: [NSAttributedString.Key : Any] = [.font: UIFont.systemFont(ofSize: 18, weight: .bold),.foregroundColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1), .underlineStyle: NSUnderlineStyle.single.rawValue, .underlineColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1)]
        let attrString = NSMutableAttributedString(string: "EULA")
        attrString.addAttributes(attr, range: NSRange(location: 0, length: attrString.length))
        emialELUA.attributedText = attrString
        view.addSubview(emialELUA)
        emialELUA.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().offset(self.view.safeAreaInsets.top + 44)
            make.width.equalTo(75)
            make.height.equalTo(25)
        }
        
        let iconcaih = UIImageView.init(image: UIImage.init(named: "LOGOxloainjgf"))
        view.addSubview(iconcaih)
        iconcaih.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
            make.top.equalTo(emialELUA.snp.bottom).offset(44)
        }
        
        
        let iconcaihHirdi = UIImageView.init(image: UIImage.init(named: "Hirdi"))
        iconcaihHirdi.contentMode = .scaleAspectFill
        view.addSubview(iconcaihHirdi)
        iconcaihHirdi.snp.makeConstraints { make in
            
            make.width.height.equalTo(59)
            make.height.equalTo(37)
            make.top.equalTo(iconcaih.snp.bottom).offset(15)
            make.centerX.equalToSuperview()
        }
        
        
        let emialihHirdi = UIImageView.init(image: UIImage.init(named: "Email_loaid"))
        view.addSubview(emialihHirdi)
        emialihHirdi.contentMode =     .scaleAspectFit
        emialihHirdi.snp.makeConstraints { make in
            
            make.width.height.equalTo(46)
            make.height.equalTo(23)
            make.leading.equalToSuperview().inset(15)
            make.top.equalTo(iconcaihHirdi.snp.bottom).offset(36)
        }
        
        let passworihHirdi = UIImageView.init(image: UIImage.init(named: "youepaswelop"))
        view.addSubview(passworihHirdi)
        passworihHirdi.contentMode = .scaleAspectFit
        passworihHirdi.snp.makeConstraints { make in
            
            make.width.height.equalTo(82)
            make.height.equalTo(23)
            make.leading.equalToSuperview().inset(15)
            make.top.equalTo(emialihHirdi.snp.bottom).offset(80)
        }
        
        view.addSubview(self.emikiolTexfield)
        view.addSubview(self.paswekiolTexfield)
        
        emikiolTexfield.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.top.equalTo(emialihHirdi.snp.bottom).offset(10)
        }
        
        
        paswekiolTexfield.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.top.equalTo(passworihHirdi.snp.bottom).offset(10)
        }
        
        
        let creatingLabeh = UILabel.init()
       
        creatingLabeh.textColor = .white
        creatingLabeh.textAlignment = .center
        creatingLabeh.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        creatingLabeh.text = "No account, we'll create one automatically"
        
        view.addSubview(creatingLabeh)
       
        creatingLabeh.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
           
            make.top.equalTo(paswekiolTexfield.snp.bottom).offset(8)
        }
        
    }
    
    private func startGestureChallenge()  {
        let emialELUA = UILabel.init()
        emialELUA.isUserInteractionEnabled = true
        emialELUA.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapingerdert)))
        emialELUA.textColor = .white
        emialELUA.numberOfLines = 0
        emialELUA.textAlignment = .left
         
        let attr: [NSAttributedString.Key : Any] = [.font: UIFont.systemFont(ofSize: 13, weight: .regular),.foregroundColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1), .underlineStyle: NSUnderlineStyle.single.rawValue, .underlineColor: UIColor(red: 1, green: 1, blue: 1, alpha: 1)]
        let attrString = NSMutableAttributedString(string: "Logging in represents your agreement to the Terms of Service and Privacy Policy.")
        attrString.addAttributes(attr, range: NSRange(location: 0, length: attrString.length))
        emialELUA.attributedText = attrString
        view.addSubview(emialELUA)
        emialELUA.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(47)
            make.trailing.equalToSuperview().inset(15)
            make.bottom.equalTo(-self.view.safeAreaInsets.bottom - 15)
        }
        
        view.addSubview(centerHIR)
        centerHIR.snp.makeConstraints { make in
            make.width.height.equalTo(25)
            make.centerY.equalTo(emialELUA)
            make.leading.equalToSuperview().inset(15)
        }
    }
    
    
    private func startLoaginChallenge()  {
        
        
        let LoaginLabeh = UILabel.init()
        LoaginLabeh.isUserInteractionEnabled = true
        LoaginLabeh.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapingerdert)))
        LoaginLabeh.textColor = .white
        LoaginLabeh.textAlignment = .center
        LoaginLabeh.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        LoaginLabeh.text = "Log in"
        LoaginLabeh.layer.cornerRadius = 25
        LoaginLabeh.layer.masksToBounds = true
        LoaginLabeh.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        view.addSubview(LoaginLabeh)
        LoaginLabeh.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(uploadFreestyleVideo)))
        LoaginLabeh.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 15 - 40 - 30)
        }
    }
    
    func pasweringhhhAddd() {
        
    }
    
    
    
    //ELUA
    @objc func tapingerdert() {
        let eluai = UINavigationController.init(rootViewController: HiRoHandELhuaBarPicdert.init(tttttt: 0))
        eluai.navigationBar.isHidden = true
        eluai.modalPresentationStyle = .overCurrentContext
        self.present(eluai, animated: true)
        
    }
    
    private lazy var emikiolTexfield: UITextField = {
        let juiy = UITextField.init()
        juiy.textColor = .white
        juiy.leftViewMode = .always
        
        let imgjurt = UIImageView(frame: CGRect(x: 20, y: 14, width: 22, height: 22))
        imgjurt.image =  UIImage.init(named: "youemailop")
        
        imgjurt.contentMode = .scaleAspectFill
        juiy.addSubview(imgjurt)
        juiy.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 42, height: 22))
        juiy.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        juiy.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        juiy.textAlignment = .center
        juiy.layer.cornerRadius = 15
        juiy.layer.masksToBounds = true
        juiy.attributedPlaceholder = NSAttributedString(string: "Enter your email", attributes: [.foregroundColor:UIColor.white])
        return juiy
    }()
    
    
    
    private lazy var paswekiolTexfield: UITextField = {
        let juiy = UITextField.init()
        juiy.textColor = .white
        juiy.leftViewMode = .always
        let imgjurt = UIImageView(frame: CGRect(x: 20, y: 14, width: 22, height: 22))
        imgjurt.image =  UIImage.init(named: "pasweailop")
        
        imgjurt.contentMode = .scaleAspectFill
        juiy.addSubview(imgjurt)
        juiy.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 42, height: 22))
      
        juiy.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        juiy.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        juiy.textAlignment = .center
        juiy.isSecureTextEntry = true
        juiy.layer.cornerRadius = 15
        juiy.layer.masksToBounds = true
        juiy.attributedPlaceholder = NSAttributedString(string: "Enter your password", attributes: [.foregroundColor:UIColor.white])
        return juiy
    }()

}


extension HiRoHandNEmialPicdert{
   @objc func uploadFreestyleVideo()  {
       let afgerrr = UserDefaults.standard.object(forKey: "addkoplpoiu") as? Bool ?? false
       
       if afgerrr == false {
           self.addlayert(textCon: "By continuing, you agree to the User Agrement & PrivacyPolicy", controller: self,textColor: 2)
                     
           return
       }
       guard let enterEmi = emikiolTexfield.text?.trimmingCharacters(in: .whitespaces).lowercased(),
              let enterkepasw = paswekiolTexfield.text?.trimmingCharacters(in: .whitespaces) else {
            return
        }
        
     
        if enterEmi.isEmpty {
            self.addlayert(textCon: "Please enter your email address", controller: self,textColor: 2)
            
            return
        }
        
        if enterkepasw.isEmpty {
            self.addlayert(textCon: "Please enter your email password", controller: self,textColor: 2)
            
            return
        }
        
        // 验证邮箱格式
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$")
        if emailPredicate.evaluate(with: enterEmi) == false{
            self.addlayert(textCon: "Please enter a valid email address", controller: self,textColor: 2)
            
            
            return
        }
       
       guard let areadInfo = UserDefaults.standard.object(forKey: enterEmi) else {
          
           ////如果邮箱id，对应的值不存在。则是注册
           let tedevbiouser = ["posmOID":enterEmi,
                        "hiroNlmer":"No name",
                       
                        "posmuBlance":"0"]
           
         
           
           UserDefaults.standard.set(tedevbiouser, forKey: "logeduserhiedIndj")//设置当前的登陆帐号
           UserDefaults.standard.set(tedevbiouser, forKey: enterEmi)//存储到已经存在的账户
           
           resultLafterPOSM(isCreate: true)
           return
       }
       //如果邮箱id，对应的值存在。则是登陆
       UserDefaults.standard.set(areadInfo, forKey: "logeduserhiedIndj")//设置当前的登陆帐号
      
       self.resultLafterPOSM(isCreate: false)
    }
    
    func resultLafterPOSM(isCreate:Bool)  {
       let statuslbl = self.addlayert(textCon: isCreate ? "Create in...." :"log in....",controller: self,timedelay: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5, execute: DispatchWorkItem(block: {
        
            statuslbl?.removeFromSuperview()
            HiRoHandPicdert.createappdemoingPOSM()
            self.addlayert(textCon: isCreate ? "Create account successful!" : "Welcom!",controller: self,textColor: 1)
            self.view.endEditing(true)
        }))
    }
}


extension UIViewController{
    func  addlayert(textCon:String,controller: UIViewController? = nil,timedelay:TimeInterval? = 2,textColor:Int? = 0)->UILabel?  {
        let statusLabel = UILabel()
        statusLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        if textColor == 0 {
            statusLabel.textColor = .white
        }
        
        if textColor == 1 {//成功
            statusLabel.textColor = .green
        }
        
        if textColor == 2 {//失败
            statusLabel.textColor = .red
        }
        
        statusLabel.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        statusLabel.textAlignment = .center
        statusLabel.numberOfLines = 0
        // 自动布局配置
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.tag = 34567
        // 圆角效果
        statusLabel.layer.cornerRadius = 14
        statusLabel.text = "\n" +  textCon + "\n"
        statusLabel.layer.masksToBounds = true
        self.topViewController(controller: controller)?.view.addSubview(statusLabel)
        statusLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-70)
            make.leading.trailing.equalToSuperview().inset(12)
        }
        guard let delatiem = timedelay else {
            return statusLabel
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delatiem, execute: DispatchWorkItem(block: {
            statusLabel.removeFromSuperview()
            
        }))
       
        return nil
       
       
       
    }
    
    func topViewController(controller: UIViewController? = nil) -> UIViewController? {
        let controller = controller ?? ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController
        
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}
