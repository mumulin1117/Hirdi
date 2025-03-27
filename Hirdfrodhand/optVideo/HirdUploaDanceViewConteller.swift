//
//  HirdUploaDanceViewConteller.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/26.
//

import UIKit
import AVFoundation
import Photos

/// 上传视频
class HirdUploaDanceViewConteller: HiRoHRalFllaterPicdert ,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    private var isAddPictureL:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
       
        
        let Loaojgi = UIButton.init()
        Loaojgi.setBackgroundImage(UIImage.init(named: "menbanfhu"), for: .normal)
        Loaojgi.setTitle( "Release", for: .normal)
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
        
        guard let enterEmi = emikiolTexfield.text?.trimmingCharacters(in: .whitespaces).lowercased(),
               let enterkepasw = estaimterTexfield.text?.trimmingCharacters(in: .whitespaces) else {
            self.addlayert(textCon: "Please enter all content", controller: self,textColor: 2)
            
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
            self.addlayert(textCon: "Please add dance video", controller: self,textColor: 2)
            
            return
        }
        
    
        let statuslbl = self.addlayert(textCon: "uploading.....",controller: self,timedelay: nil)
        self.view.isUserInteractionEnabled = false
         DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
         
             statuslbl?.removeFromSuperview()
             
             self.addlayert(textCon: "upload successful,Display after approval!",controller: self,textColor: 1)
             self.view.endEditing(true)
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
        juiy.attributedPlaceholder = NSAttributedString(string: "Enter PK deadline", attributes: [.foregroundColor:UIColor.white])
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
        
       
        
        let uopatit = UIImageView.init(image: UIImage.init(named: "Select PK Time"))
        view.addSubview(uopatit)
        uopatit.contentMode = .scaleAspectFit
        uopatit.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(131)
            make.height.equalTo(23)
            make.top.equalTo(emikiolTexfield.snp.bottom ).offset(22)
        }
        
        view.addSubview(estaimterTexfield)
        estaimterTexfield.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.top.equalTo(uopatit.snp.bottom).offset(11)
        }
        
        
        
        let picuopatit = UIImageView.init(image: UIImage.init(named: "Dance Videos"))
        view.addSubview(picuopatit)
        picuopatit.contentMode = .scaleAspectFit
        picuopatit.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(15)
            make.width.equalTo(116)
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
    
    func presentViro()  {
        let Dragimg = UIImagePickerController()
        Dragimg.sourceType = .photoLibrary
        Dragimg.mediaTypes = ["public.movie"]
        Dragimg.delegate = self
        Dragimg.allowsEditing = true
        self.present(Dragimg, animated: true, completion: nil)
    }
    @objc func sajsb() {
        PHPhotoLibrary.requestAuthorization{ status in
            switch status {
            case .authorized:
                DispatchQueue.main.async {
                    self.presentViro()
                }
                
            case .denied, .restricted:
                DispatchQueue.main.async {
                    self.addlayert(textCon: "No Photolibary Permission!",controller: self,textColor: 2)
                }
                
            case .notDetermined:
                print("未决定，但此处不会触发")
            case .limited:
                DispatchQueue.main.async {
                    self.presentViro()
                }
            @unknown default:
                break
            }
        }
    }
    
//    @objc func sajsb() {
//        switch AVCaptureDevice.authorizationStatus(for: .video) {
//        case .authorized:
//            let Dragimg = UIImagePickerController()
//            Dragimg.sourceType = .photoLibrary
//            Dragimg.mediaTypes = ["public.movie"]
//            Dragimg.delegate = self
//            Dragimg.allowsEditing = true
//            self.present(Dragimg, animated: true, completion: nil)
//            
//        case .notDetermined:
//           
//            AVCaptureDevice.requestAccess(for: .video) { ifHasgranted in
//                
//                DispatchQueue.main.async {
//                    
//                    if ifHasgranted {
//                        let Dragimg = UIImagePickerController()
//                        Dragimg.sourceType = .photoLibrary
//                        Dragimg.mediaTypes = ["public.movie"]
//                        Dragimg.delegate = self
//                        Dragimg.allowsEditing = true
//                        self.present(Dragimg, animated: true, completion: nil)
//                    }else{
//                        self.addlayert(textCon: "No Camera Permission!",controller: self,textColor: 2)
//                    }
//                    
//                }
//                
//            }
//            
//        case .denied,.restricted:
//
//            self.addlayert(textCon: "No Camera Permission!",controller: self,textColor: 2)
//        
//         default:
//
//            self.addlayert(textCon: "No Camera Permission!",controller: self,textColor: 2)
//        }
//        
//        
//     }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        guard let lOnai = info[.mediaURL] as? URL else {
            return
        }
        
        HirdUploaDanceViewConteller.fetchThuaimPicture_hird(lainderURL: lOnai) { thumbnail in
                   
            // 在主线程中更新 UI
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
                if let nailiamge = thumbnail {
                    self.hirdiBUtteon.setBackgroundImage(nailiamge, for: .normal)
                   
                    self.hirdiBUtteon.setImage(UIImage.init(named: "iconPoikio_play"), for: .normal)
                    self.isAddPictureL = true
                }
            }
        }
        
    }
}


extension HirdUploaDanceViewConteller{
    
    
    class func fetchThuaimPicture_hird(lainderURL: URL, hirdicompletion: @escaping (UIImage?) -> Void) {
        let uerAssetHIRDI = AVAsset(url: lainderURL)
        let reandy = AVAssetImageGenerator(asset: uerAssetHIRDI)
        reandy.appliesPreferredTrackTransform = true
     
        reandy.generateCGImagesAsynchronously(forTimes: [NSValue(time: CMTime(seconds: 0, preferredTimescale: 600) )]) { _, image, _, result, error in
            if let error = error {
              
                hirdicompletion(nil)
                print(error.localizedDescription)
                
                return
            }
            
            guard let  image = image else{
                hirdicompletion(nil)
                return
            }
            let thumbnail = UIImage(cgImage: image)
            hirdicompletion(thumbnail)
            
           
        }
        
    }
}
