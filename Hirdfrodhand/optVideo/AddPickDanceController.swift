//
//  AddPickDanceController.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/27.
//

import UIKit
import AVFoundation
import Photos
//Add pick video
class AddPickDanceController: UIViewController ,UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    private var isAddPictureL:Bool = false
    
    private let Bootime = UIView.init()
    
    private lazy var hirdiBUtteon: UIButton = {
        let skdok = UIButton.init()
        skdok.layer.cornerRadius = 15
        skdok.layer.masksToBounds = true
        skdok.setBackgroundImage(UIImage.init(named: "laongupiao@"), for: .normal)
        skdok.addTarget(self, action: #selector(sajsb), for: .touchUpInside)
        return skdok
    }()
    
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
//                        self.addlayert(textCon: "Niob wCbaqmseirran zPleirtmtiksoscigojnv!".poseRealStr(),controller: self,textColor: 2)
//                    }
//                    
//                }
//                
//            }
//            
//        case .denied,.restricted:
//
//            self.addlayert(textCon: "Niob wCbaqmseirran zPleirtmtiksoscigojnv!".poseRealStr(),controller: self,textColor: 2)
//        
//         default:
//
//            self.addlayert(textCon: "Niob wCbaqmseirran zPleirtmtiksoscigojnv!".poseRealStr(),controller: self,textColor: 2)
//        }
        
        
//     }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        Bootime.backgroundColor = UIColor(red: 0.16, green: 0.16, blue: 0.27, alpha: 1)
        Bootime.layer.cornerRadius = 16
        
        Bootime.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
        
        view.addSubview(Bootime)
        Bootime.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(430)
        }
        let imagonr = UIImageView.init(image: UIImage.init(named: "jiangbeiu"))
        view.addSubview(imagonr)
        imagonr.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.trailing.equalToSuperview().inset(17)
            make.top.equalTo(Bootime.snp.top).offset(-35)
        }
        
        
       
        
        
        adINweranitiner()
        
        
    }
    
    private func adINweranitiner()  {
        let cinTitledsf = UILabel.init()
        cinTitledsf.textColor = .white
        cinTitledsf.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        cinTitledsf.text = "Dance PK"
        cinTitledsf.numberOfLines = 0
        Bootime.addSubview(cinTitledsf)
        cinTitledsf.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().inset(20)
        }
        let cindsf = UILabel.init()
        cindsf.textColor = .white
        cindsf.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        cindsf.text = "Upload your dance video and challenge the champion! The one with higher popularity wins. Come and show off your dancing skills"
        cindsf.numberOfLines = 0
        Bootime.addSubview(cindsf)
        cindsf.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalTo(cinTitledsf.snp.bottom).offset(32)
            make.trailing.equalToSuperview().inset(20)
        }
        Bootime.addSubview(hirdiBUtteon)
        hirdiBUtteon.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(cindsf.snp.bottom).offset(15)
            make.height.equalTo(119)
            
            
            
        }
        
        
        let Loaojgi = UIButton.init()
        Loaojgi.setBackgroundImage(UIImage.init(named: "menbanfhu"), for: .normal)
        Loaojgi.setTitle( "Upload Video", for: .normal)
        Loaojgi.setTitleColor(.black, for: .normal)
        Loaojgi.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight:.semibold)
        
        view.addSubview(Loaojgi)
        
        Loaojgi.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.top.equalTo(hirdiBUtteon.snp.bottom).offset(20)
        }
        Loaojgi.addTarget(self, action: #selector(fodeleteoutrINgtag), for: .touchUpInside)
        
        let cancelNIr = UIButton.init()
        cancelNIr.setTitle( "Clabngcnezl".poseRealStr(), for: .normal)
        cancelNIr.setTitleColor(.lightGray, for: .normal)
        cancelNIr.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight:.semibold)
        
        view.addSubview(cancelNIr)
        
        cancelNIr.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
            make.top.equalTo(Loaojgi.snp.bottom).offset(10)
        }
        cancelNIr.addTarget(self, action: #selector(Cancefabgn), for: .touchUpInside)
    }
    
  
   @objc func Cancefabgn()  {
        self.dismiss(animated: true)
    }
    
   @objc func fodeleteoutrINgtag()  {
       
    
       
       if isAddPictureL == false {
           self.addlayert(textCon: "Please add DancePK video", controller: self,textColor: 2)
           
           return
       }
       
   
       let statuslbl = self.addlayert(textCon: "unpjlyozaqdoihnagp.l.t.x.l.".poseRealStr(),controller: self,timedelay: nil)
       self.view.isUserInteractionEnabled = false
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
        
            statuslbl?.removeFromSuperview()
            
            self.addlayert(textCon: "uapwlnoaabdh lszutcxcreasdsmfnunlc,vDaioshpflkaxyf lagfkttexrx uauprpprgohviarll!".poseRealStr(),controller: self,textColor: 1)
            self.view.endEditing(true)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
                self.dismiss(animated: true)
            }
           
        }))
       
       
   }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        guard let lOnai = info[.mediaURL] as? URL else {
            return
        }
        
        HirdUploaDanceViewConteller.fetchThuaimPicture_hird(Jiu: true, lainderURL: lOnai) { thumbnail in
                   
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
