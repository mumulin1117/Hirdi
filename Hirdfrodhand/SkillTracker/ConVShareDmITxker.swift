//
//  ConVShareDmITxker.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/25.
//

import UIKit
import AVFoundation
//动态


class ConVShareDmITxker: HiRoHRalFllaterPicdert,UITextViewDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    private var isAddPictureL:Bool = false
    
    private lazy var contertCsire: UITextView = {
        let DOg = UITextView()
        DOg.backgroundColor = .clear
        DOg.delegate = self
        DOg.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 15, right: 15)
        DOg.textColor = .white
        DOg.text = "Publish dynamic content…"
        DOg.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        return DOg
    }()
    
    private lazy var hirdiBUtteon: UIButton = {
        let skdok = UIButton.init()
        skdok.layer.cornerRadius = 15
        skdok.layer.masksToBounds = true
        skdok.setBackgroundImage(UIImage.init(named: "qinyu"), for: .normal)
        skdok.addTarget(self, action: #selector(sajsb), for: .touchUpInside)
        return skdok
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        
       
        colldAddddSaveg()
        
        AddddSaveg()
    }
    
    
    func colldAddddSaveg()  {
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        let al = UIView.init()
        al.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        al.layer.cornerRadius = 16
        al.layer.masksToBounds = true
        view.addSubview(al)
        al.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(450)
            make.top.equalTo((window?.safeAreaInsets.top ?? 0) + 40 + 20)
        }
        
        let skkoko = UIImageView(image: UIImage.init(named: "Share itbaba"))
        skkoko.contentMode = .scaleAspectFit
        al.addSubview(skkoko)
        skkoko.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().inset(20)
            make.width.equalTo(105)
            make.height.equalTo(28)
        }
        
        al.addSubview(hirdiBUtteon)
        hirdiBUtteon.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.bottom.leading.equalToSuperview().inset(20)
        }
        
        al.addSubview(self.contertCsire)
        contertCsire.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(5)
            make.bottom.equalTo(hirdiBUtteon.snp.top).offset(-15)
            make.top.equalTo(skkoko.snp.bottom).offset(12)
        }
        
        
    }
    func AddddSaveg()  {
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
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0)  - 25)
        }
        Loaojgi.addTarget(self, action: #selector(fodeleteoutrINgtag), for: .touchUpInside)
        
    
    }
   

    
    //创建
   @objc func fodeleteoutrINgtag() {
       
       guard let enterEmi = contertCsire.text?.trimmingCharacters(in: .whitespaces).lowercased(),
       enterEmi != "Publish dynamic content…" else {
           self.addlayert(textCon: "Please enter the content!", controller: self,textColor: 2)
            return
        }
        
     
        if enterEmi.isEmpty {
            self.addlayert(textCon: "Please enter the practice dance name", controller: self,textColor: 2)
            
            return
        }
        
        
       
       if isAddPictureL == false {
           self.addlayert(textCon: "Please add  picture", controller: self,textColor: 2)
           
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
    
    
    
    @objc func sajsb() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            let Dragimg = UIImagePickerController()
            Dragimg.sourceType = .photoLibrary
            
            Dragimg.delegate = self
            Dragimg.allowsEditing = true
            self.present(Dragimg, animated: true, completion: nil)
            
        case .notDetermined:
           
            AVCaptureDevice.requestAccess(for: .video) { ifHasgranted in
                
                DispatchQueue.main.async {
                    
                    if ifHasgranted {
                        let Dragimg = UIImagePickerController()
                        Dragimg.sourceType = .photoLibrary
                        
                        Dragimg.delegate = self
                        Dragimg.allowsEditing = true
                        self.present(Dragimg, animated: true, completion: nil)
                    }else{
                        self.addlayert(textCon: "No Photo libary Permission!",controller: self,textColor: 2)
                    }
                    
                }
                
            }
            
        case .denied,.restricted:

            self.addlayert(textCon: "No Camera Permission!",controller: self,textColor: 2)
        
         default:

            self.addlayert(textCon: "No Camera Permission!",controller: self,textColor: 2)
        }
        
        
     }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as! UIImage
    
        DispatchQueue.main.async {
            self.hirdiBUtteon.setBackgroundImage(image, for: .normal)//.image =
            self.isAddPictureL = true
            picker.dismiss(animated: true)
            self.navigationController?.popToRootViewController(animated: true)
        }
        
    }
}
