//
//  HIrdBSkiloipController.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/4/23.
//
import WebKit
import UIKit
import SwiftyStoreKit
//web


class HIrdBSkiloipController: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var fmePlaungView:WKWebView?
    private  var fmersousifgnin = false
    private var okaeenteanceFME:String
    
    var lakdj:UILabel?
    
    init(wonderfulnowing:String,islogingpagepalt:Bool) {
        okaeenteanceFME = wonderfulnowing
        
        fmersousifgnin = islogingpagepalt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        fmePlaungView?.configuration.userContentController.add(self, name: "Pay")
        fmePlaungView?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        fmePlaungView?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        if fmersousifgnin {
            matherlang.image = UIImage(named: "FoeloaginPage")
        }else{
            matherlang.image = UIImage(named: "poajfLainj")
        }
       
        view.addSubview(matherlang)
        
       
        
        if fmersousifgnin == true {
            let  lsignintouchHTL = UIButton.init()
            lsignintouchHTL.setBackgroundImage(UIImage.init(named: "posdaiNbc"), for: .normal)
           
            lsignintouchHTL.setTitle("Quick Log", for: .normal)
            lsignintouchHTL.setTitleColor(UIColor.black, for: .normal)
            lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
            lsignintouchHTL.isUserInteractionEnabled = false
            view.addSubview(lsignintouchHTL)
           
            lsignintouchHTL.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.height.equalTo(52)
                make.width.equalTo(335)
                make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
            }
        }
        
        
        
         
        let fmeviewstys = WKWebViewConfiguration()
        fmeviewstys.allowsAirPlayForMediaPlayback = false
        fmeviewstys.allowsInlineMediaPlayback = true
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
        fmeviewstys.mediaTypesRequiringUserActionForPlayback = []
        fmeviewstys.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        fmePlaungView = WKWebView.init(frame: UIScreen.main.bounds, configuration: fmeviewstys)
        fmePlaungView?.isHidden = true
        fmePlaungView?.translatesAutoresizingMaskIntoConstraints = false
        fmePlaungView?.scrollView.alwaysBounceVertical = false
        
        fmePlaungView?.scrollView.contentInsetAdjustmentBehavior = .never
        fmePlaungView?.navigationDelegate = self
        
        fmePlaungView?.uiDelegate = self
        fmePlaungView?.allowsBackForwardNavigationGestures = true
   
        if let urewlinsdfme = URL.init(string: okaeenteanceFME) {
            fmePlaungView?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        self.view.addSubview(fmePlaungView!)
        
        self.lakdj = self.addlayert(textCon: fmersousifgnin == true ? "log in....." : "Requesting...",controller: self,timedelay: nil)
        
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let url = navigationAction.request.url {
                    UIApplication.shared.open(url,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        fmePlaungView?.isHidden = false
        
        self.lakdj?.removeFromSuperview()
        
        if fmersousifgnin == true {
            self.addlayert(textCon: "Login successful",controller: self,textColor: 1)
           
           
            fmersousifgnin = false
            
        }
        
        
        let pushtokeng = UserDefaults.standard.object(forKey: "remotetokenHIRDI") as? String  ?? ""
       
#if DEBUG
        let adventurepatherFME = "/api/device/save"
         let versationParamFME: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :onlyidduserFME,
            "pushToken" :pushtokeng,

         ]
        #else
        let adventurepatherFME = "/greenRoom/aiScene/ctliaop"
        
      
         let versationParamFME: [String: Any] = [
            "dramaVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "stageDoor":"APPSTORE",
            "osCharacter":UIDevice.current.systemName,
             "osBackdrop":UIDevice.current.systemVersion,
             "spotlightType" : "iPhone",
            "actNumber" :SceneDelegate.onlyidduserFME,
            "applausePush" :AppDelegate.appUITPushToken,
         
         ]
#endif
        HIrdBSkilNetaing.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, parameters: versationParamFME){_ in }
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
       
//        let angagingFME =  "payload****transactionId****type****direct****Pay****Close".components(separatedBy: "****")
//        let oertpinkFME =  "No have receipt****/api/ios/v2/pay****The purchase was successful!".components(separatedBy: "****")
       
        if message.name == "Pay",
            let mesgidhFME = message.body as? String {
         

            view.isUserInteractionEnabled = false
            
            self.lakdj = self.addlayert(textCon:  "Requesting...",controller: self,timedelay: nil)
           

            SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
                self.lakdj?.removeFromSuperview()
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        
                        self.addlayert(textCon: "No have receipt", controller: self,textColor: 2)
                        return
                      }
                    

                    HIrdBSkilNetaing.pnolyert.installEnterRemallLastNetiFME( "/api/ios/v2/pay", parameters: [
                        "payload":ticketData.base64EncodedString(),
                        "transactionId":gettransID,
                        "type":"direct"
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):
                            self.addlayert(textCon: "The purchase was successful!",controller: self,textColor: 1)
                           
                        case .failure(let error):
                           
                            self.addlayert(textCon: "Error", controller: self,textColor: 2)
                        }
                    }
                    
           
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                    
                        self.addlayert(textCon: error.localizedDescription, controller: self,textColor: 2)
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {
          
            UserDefaults.standard.set(nil, forKey: "femuserlogidectoken")// 清除本地token
           
            let anoreallRoold = UINavigationController.init(rootViewController: HIrdBSkistylusSatori_ntroller.init())
            anoreallRoold.navigationBar.isHidden = true
            
            window?.rootViewController = anoreallRoold
        }
    }
    
}
