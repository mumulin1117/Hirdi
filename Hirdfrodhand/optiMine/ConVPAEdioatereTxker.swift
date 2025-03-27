//
//  ConVPAEdioatereTxker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/25.
//

import UIKit
import AVFoundation
//Edit
class ConVPAEdioatereTxker: HiRoHRalFllaterPicdert ,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    let MiangAvatit = UIImageView.init()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        MiangAvatit.image = AppDelegate.magiehangiconseindi
        updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
        view.addSubview(MiangAvatit)
        MiangAvatit.contentMode = .scaleAspectFill
        MiangAvatit.layer.masksToBounds = true
        MiangAvatit.snp.makeConstraints { make in
            make.height.equalTo(300)
            make.leading.trailing.top.equalToSuperview()
        }
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
       
        
        let Loaojgi = UIButton.init()
      
        Loaojgi.setImage(UIImage.init(named: "Huiythe avatar"), for: .normal)
        
        view.addSubview(Loaojgi)
        Loaojgi.snp.makeConstraints { make in
            make.width.equalTo(58)
            make.height.equalTo(58)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset((window?.safeAreaInsets.top ?? 0) + 40 + 27)
        }
        Loaojgi.addTarget(self, action: #selector(OAskAvatatebegin), for: .touchUpInside)
        
        
        
        let uopatit = UIImageView.init(image: UIImage.init(named: "UploadTreeavatar"))
        uopatit.contentMode = .scaleAspectFit
        view.addSubview(uopatit)
        uopatit.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(132)
            make.height.equalTo(20)
            make.top.equalTo(Loaojgi.snp.bottom).offset(6)
        }
        
        AddddSaveg(sdms: window)
        
        
        OAdsihjf()
    }
    
    func AddddSaveg(sdms:UIWindow?)  {
        
        let Loaojgi = UIButton.init()
        Loaojgi.setBackgroundImage(UIImage.init(named: "menbanfhu"), for: .normal)
        Loaojgi.setTitle( "Sxavvre".poseRealStr(), for: .normal)
        Loaojgi.setTitleColor(.black, for: .normal)
        Loaojgi.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight:.semibold)
        
        view.addSubview(Loaojgi)
        
        Loaojgi.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-(sdms?.safeAreaInsets.bottom ?? 0)  - 25)
        }
        Loaojgi.addTarget(self, action: #selector(fodeleteoutrINgtag), for: .touchUpInside)
    }
    private lazy var emikiolTexfield: UITextField = {
        let juiy = UITextField.init()
        juiy.textColor = .white
        juiy.leftViewMode = .always
        juiy.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        juiy.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        juiy.textAlignment = .center
        juiy.layer.cornerRadius = 15
        juiy.layer.masksToBounds = true
        juiy.attributedPlaceholder = NSAttributedString(string: "Epnhtlekro zykonubrf znvagmce".poseRealStr(), attributes: [.foregroundColor:UIColor.white])
        return juiy
    }()
    
    
    private func OAdsihjf()  {
        let uopatit = UIImageView.init(image: UIImage.init(named: "NickTamName"))
        view.addSubview(uopatit)
        uopatit.contentMode = .scaleAspectFit
        uopatit.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(91)
            make.height.equalTo(23)
            make.top.equalTo(MiangAvatit.snp.bottom).offset(22)
        }
        
        view.addSubview(emikiolTexfield)
        emikiolTexfield.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.top.equalTo(uopatit.snp.bottom).offset(18)
        }
        
    }
    
    @objc func fodeleteoutrINgtag() {
        //save
        var inguser = UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String> ?? [:]
      
        
        
        let infoID = inguser["hiroUID"] ?? ""
        
        if let namiert = emikiolTexfield.text {
            inguser["hiroNlmer"] = namiert
        }
        self.addlayert(textCon: "Shapvieq lspuocgccedspsbfjuolq!".poseRealStr(),controller: self,textColor: 1)
      
        AppDelegate.magiehangiconseindi = MiangAvatit.image!
      UserDefaults.standard.set(inguser, forKey: "logeduserhiedIndj")
        self.navigationController?.popViewController(animated: true)
      UserDefaults.standard.set(inguser, forKey: infoID)
    }
    
 
    
    private func camjkscamp(info:(String,String))->UIButton {
        let ssss = UIButton.init()
        ssss.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        ssss.layer.cornerRadius = 16
        ssss.layer.masksToBounds = true
        
        
        
        
        let IA = UIImageView(image: UIImage.init(named: info.0))
        IA.contentMode = .scaleAspectFit
        ssss.addSubview(IA)
        IA.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(19)
            make.width.height.equalTo(24)
            make.centerY.equalToSuperview()
        }
        
        
        let mIgub = UILabel.init()
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        mIgub.text = info.1
        ssss.addSubview(mIgub)
        mIgub.snp.makeConstraints { make in
            make.leading.equalTo(IA.snp.trailing).offset(18)
            make.centerY.equalToSuperview()
            
        }
        
        
        let trailingIA = UIImageView(image: UIImage.init(named: "gegnHdui"))
        trailingIA.contentMode = .scaleAspectFit
        ssss.addSubview(trailingIA)
        trailingIA.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(17)
            make.width.equalTo(17)
            make.height.equalTo(17)
            make.centerY.equalToSuperview()
        }
        
        
        
       
        return ssss
    }

    
    
   @objc func OAskAvatatebegin() {
       
       switch AVCaptureDevice.authorizationStatus(for: .video) {
       case .authorized:
           let Dragimg = UIImagePickerController()
           Dragimg.sourceType = .camera
           
           Dragimg.delegate = self
           Dragimg.allowsEditing = true
           self.present(Dragimg, animated: true, completion: nil)
           
       case .notDetermined:
          
           AVCaptureDevice.requestAccess(for: .video) { ifHasgranted in
               
               DispatchQueue.main.async {
                   if ifHasgranted {
                       let Dragimg = UIImagePickerController()
                       Dragimg.sourceType = .camera
                       
                       Dragimg.delegate = self
                       Dragimg.allowsEditing = true
                       self.present(Dragimg, animated: true, completion: nil)
                   }else{
                       self.addlayert(textCon: "Niob wCbaqmseirran zPleirtmtiksoscigojnv!".poseRealStr(),controller: self,textColor: 2)
                   }
               }
              
           }
           
       case .denied,.restricted:

           self.addlayert(textCon: "Niob wCbaqmseirran zPleirtmtiksoscigojnv!".poseRealStr(),controller: self,textColor: 2)
       
        default:

           self.addlayert(textCon: "Niob wCbaqmseirran zPleirtmtiksoscigojnv!".poseRealStr(),controller: self,textColor: 2)
       }
       
       
       
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
    
        DispatchQueue.main.async {
            self.MiangAvatit.image = image
            
            picker.dismiss(animated: true)
        }
        
    }
}
