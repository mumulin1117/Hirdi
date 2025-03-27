//
//  ConVPBesginRecoerdreTxker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/25.
//

import UIKit
import AVFoundation
//create
class ConVPBesginRecoerdreTxker: HiRoHRalFllaterPicdert ,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    private var isAddPictureL:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
       
        
        let Loaojgi = UIButton.init()
        Loaojgi.setBackgroundImage(UIImage.init(named: "menbanfhu"), for: .normal)
        Loaojgi.setTitle( "Rjeqlrekaesee".poseRealStr(), for: .normal)
        Loaojgi.setTitleColor(.black, for: .normal)
        Loaojgi.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight:.semibold)
        
        view.addSubview(Loaojgi)
        Loaojgi.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0) - 15)
        }
        Loaojgi.addTarget(self, action: #selector(loadgoutrINgtag), for: .touchUpInside)
        
      
        
        OAdsihjf()
        
        
        EstimatedHirDays()
    }
    
    //release
    @objc func loadgoutrINgtag() {
        
        guard let enterEmi = emikiolTexfield.text,
               let enterkepasw = estaimterTexfield.text else {
            self.addlayert(textCon: "Pblleqamsgeh reinntweurt pacltlw lckolnntsecnht".poseRealStr(), controller: self,textColor: 2)
            
             return
         }
         
      
         if enterEmi.isEmpty {
             self.addlayert(textCon: "Please enter the practice dance name", controller: self,textColor: 2)
             
             return
         }
         
         if enterkepasw.isEmpty {
             self.addlayert(textCon: "Please enter the practice time", controller: self,textColor: 2)
             
             return
         }
        
        if isAddPictureL == false {
            self.addlayert(textCon: "Please add dance picture", controller: self,textColor: 2)
            
            return
        }
        
    
        let statuslbl = self.addlayert(textCon: "unpjlyozaqdoihnagp.l.t.x.l.".poseRealStr(),controller: self,timedelay: nil)
        self.view.isUserInteractionEnabled = false
         DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
         
             statuslbl?.removeFromSuperview()
             
             DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
                 self.navigationController?.popViewController(animated: true)
             }))
             self.addlayert(textCon: "ucptlnodaadv hsqubcjcbewsosqfrutln,gDyiisppvlmazyx maufhthexrc laypgpbrpoqveasla!".poseRealStr(),controller: self,textColor: 1)
            
         }))
        
        
    }
    
    private lazy var hirdiBUtteon: UIButton = {
        let skdok = UIButton.init()
        skdok.layer.cornerRadius = 15
        skdok.layer.masksToBounds = true
        skdok.setBackgroundImage(UIImage.init(named: "upiao"), for: .normal)
        skdok.addTarget(self, action: #selector(sajsb), for: .touchUpInside)
        return skdok
    }()
    
  

    private lazy var emikiolTexfield: UITextField = {
        let juiy = UITextField.init()
        juiy.textColor = .white
        juiy.leftViewMode = .always
        juiy.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        juiy.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        juiy.textAlignment = .center
        juiy.layer.cornerRadius = 14
        juiy.layer.masksToBounds = true
        juiy.attributedPlaceholder = NSAttributedString(string: "Enter the practice dance name", attributes: [.foregroundColor:UIColor.white])
        return juiy
    }()
    
    private lazy var estaimterTexfield: UITextField = {
        let juiy = UITextField.init()
        juiy.textColor = .white
        juiy.leftViewMode = .always
        juiy.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        juiy.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        juiy.textAlignment = .center
        juiy.layer.cornerRadius = 14
        juiy.layer.masksToBounds = true
        juiy.attributedPlaceholder = NSAttributedString(string: "Enter the practice time", attributes: [.foregroundColor:UIColor.white])
        return juiy
    }()
    
    
    private func OAdsihjf()  {
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        let uopatit = UIImageView.init(image: UIImage.init(named: "DanceDHirName"))
        view.addSubview(uopatit)
        uopatit.contentMode = .scaleAspectFit
        uopatit.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(106)
            make.height.equalTo(23)
            make.top.equalToSuperview().offset((window?.safeAreaInsets.top ?? 0) + 20 + 48)
        }
        
        view.addSubview(emikiolTexfield)
        emikiolTexfield.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.top.equalTo(uopatit.snp.bottom).offset(11)
        }
        
    }
    
    
    
    private func EstimatedHirDays()  {
        
       
        
        let uopatit = UIImageView.init(image: UIImage.init(named: "EstimatedHirDays"))
        view.addSubview(uopatit)
        uopatit.contentMode = .scaleAspectFit
        uopatit.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(134)
            make.height.equalTo(23)
            make.top.equalTo(emikiolTexfield.snp.bottom ).offset(22)
        }
        
        view.addSubview(estaimterTexfield)
        estaimterTexfield.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.top.equalTo(uopatit.snp.bottom).offset(11)
        }
        
        
        
        let picuopatit = UIImageView.init(image: UIImage.init(named: "Add Dance Pictures"))
        view.addSubview(picuopatit)
        picuopatit.contentMode = .scaleAspectFit
        picuopatit.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(170)
            make.height.equalTo(23)
            make.top.equalTo(estaimterTexfield.snp.bottom ).offset(22)
        }
        
        
        view.addSubview(hirdiBUtteon)
        hirdiBUtteon.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(134)
            make.height.equalTo(189)
            make.top.equalTo(picuopatit.snp.bottom).offset(10)
        }
        
        
        
    }
    
    @objc func sajsb() {
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
            self.hirdiBUtteon.setBackgroundImage(image, for: .normal)//.image =
            self.isAddPictureL = true
            picker.dismiss(animated: true)
            
        }
        
    }
}
