//
//  ConVAiGEtmITxker.swift
//  Hirdfrodhand
//
//  Created by mumu on 2025/3/25.
//

import UIKit

class ConVAiGEtmITxker: HiRoHRalFllaterPicdert {
    
    var descRequest:String
    init(descRequest: String) {
        self.descRequest = descRequest
        super.init(nibName: nil, bundle: nil)
    }
    
     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.moreType = 1
       
        updateAllItemBackButton(hiddenBack: false, hiddenReport: false)
        
        
        InserVnorUI()
        
        self.view.isUserInteractionEnabled = false
        
      
        
         
         
             
        guard let url = URL(string: "http://www.mnbvcx3456y.xyz/talktwo/askQuestionv2") else {
           
            self.addlayert(textCon: "Invalid URL", controller: self,textColor: 2)
          
            return
        }
        var Forguesdt = URLRequest(url: url)
        Forguesdt.httpMethod = "POST"
       
        let parameters: [String: Any] = [
            "question": descRequest,
            "questionType": 1,
            "eqNo": "5555"
        ]
        
        Forguesdt.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        Forguesdt.httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: [])
        BeginResdfiru(hirREwu:Forguesdt)
        

        
    }
    
    
    func BeginResdfiru(hirREwu:URLRequest)  {
        let statuslbl = self.addlayert(textCon: "AI Generateing...",controller: self,timedelay: nil)
        
        URLSession.shared.dataTask(with: hirREwu) { [weak self] data, response, error in
            
            DispatchQueue.main.async {
                self?.view.isUserInteractionEnabled = true
                statuslbl?.removeFromSuperview()
                
                if let error = error {
                    self?.addlayert(textCon: "Network error: \(error.localizedDescription)", controller: self,textColor: 2)
                    return
                }
                
                guard let data = data else {
                    self?.addlayert(textCon: "No data received", controller: self,textColor: 2)
                   
                    
                    return
                }
              
                if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
                   let content = json["data"] as? String {
                    self?.contertCsire.text = content
                } else {
                    self?.addlayert(textCon: "Invalid data format", controller: self,textColor: 2)
                   
                   
                }
            }
        }.resume()
    }

    
    
    func InserVnorUI()  {
        if let image = UIImage(named: "SaiPAckimg") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        let toptitleimage = UIImageView(image: UIImage.init(named: "Result_top"))
        toptitleimage.contentMode = .scaleAspectFit
        view.addSubview(toptitleimage)
        toptitleimage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(50)
            make.height.equalTo(20)
            make.centerY.equalTo((window?.safeAreaInsets.top ?? 0) + 20 )
        }
        toptitleimage.isUserInteractionEnabled = true
        contertCsire.layer.cornerRadius = 16
        contertCsire.layer.masksToBounds = true
        
        
        view.addSubview(contertCsire)
        contertCsire.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(toptitleimage.snp.bottom).offset(68)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0) - 20 )
        }
    }
    private lazy var contertCsire: UITextView = {
        let DOg = UITextView()
        DOg.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        DOg.isEditable = false
        DOg.contentInset = UIEdgeInsets(top: 16, left: 10, bottom: 30, right: 15)
        DOg.textColor = .white
        DOg.layer.borderWidth = 1
        DOg.isScrollEnabled = true
        DOg.layer.borderColor = UIColor.red.cgColor
        DOg.text = "Waiting result..."
        DOg.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        return DOg
    }()

}
