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
    private var tactileTesserae:WKWebView?
    private  var motionMandala = false
    private var gestureGradient:String
    
    var lakdj:UILabel?
    
    init(_gestureGradient:String,_motionMandala:Bool) {
        gestureGradient = _gestureGradient
        
        motionMandala = _motionMandala
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        tactileTesserae?.configuration.userContentController.add(self, name: "Pay")
        tactileTesserae?.configuration.userContentController.add(self, name: "Close")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        tactileTesserae?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func startLoaginChallenge()  {
        
        
        let LoaginLabeh = UILabel.init()
        LoaginLabeh.isUserInteractionEnabled = true
       
        LoaginLabeh.textColor = .white
        LoaginLabeh.textAlignment = .center
        LoaginLabeh.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        LoaginLabeh.text = "Lxowgw cizn".poseRealStr()
        LoaginLabeh.layer.cornerRadius = 25
        LoaginLabeh.layer.masksToBounds = true
        LoaginLabeh.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        view.addSubview(LoaginLabeh)
       
        LoaginLabeh.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 15 - 40 - 10)
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let image = UIImage(named: "naokeyi") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
       
        
        if motionMandala == true {
            startLoaginChallenge()
        }
        
        
        
         
        let harmonicHexes = WKWebViewConfiguration()
        harmonicHexes.allowsAirPlayForMediaPlayback = false
        harmonicHexes.allowsInlineMediaPlayback = true
        harmonicHexes.preferences.javaScriptCanOpenWindowsAutomatically = true
        harmonicHexes.mediaTypesRequiringUserActionForPlayback = []
        harmonicHexes.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        tactileTesserae = WKWebView.init(frame: UIScreen.main.bounds, configuration: harmonicHexes)
        tactileTesserae?.isHidden = true
        tactileTesserae?.translatesAutoresizingMaskIntoConstraints = false
        tactileTesserae?.scrollView.alwaysBounceVertical = false
        
        tactileTesserae?.scrollView.contentInsetAdjustmentBehavior = .never
        tactileTesserae?.navigationDelegate = self
        
        tactileTesserae?.uiDelegate = self
        tactileTesserae?.allowsBackForwardNavigationGestures = true
   
        if let digitalDoodles = URL.init(string: gestureGradient) {
            tactileTesserae?.load(NSURLRequest.init(url:digitalDoodles) as URLRequest)
        }
        self.view.addSubview(tactileTesserae!)
        
        self.lakdj = self.addlayert(textCon: motionMandala == true ? "log in....." : "Requesting...",controller: self,timedelay: nil)
        
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
        tactileTesserae?.isHidden = false
        
        self.lakdj?.removeFromSuperview()
        
        if motionMandala == true {
            self.addlayert(textCon: "Login successful",controller: self,textColor: 1)
           
           
            motionMandala = false
            
        }
        
        
        let pushtokeng = UserDefaults.standard.object(forKey: "remotetokenHIRDI") as? String  ?? ""
       
#if DEBUG
        let kineticQuotient = "/api/device/save"
         let rhythmRings: [String: Any] = [
            "appVersion": "1.1.0",
             "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
             "osVersion":UIDevice.current.systemVersion,
             "deviceType" : "iPhone",
            "deviceNo" :choreoCloudID,
            "pushToken" :pushtokeng,

         ]
        #else
        let kineticQuotient = "/greenRoom/aiScene/ctliaop"
        
      
         let rhythmRings: [String: Any] = [
            "dramaVer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
             "stageDoor":"APPSTORE",
            "osCharacter":UIDevice.current.systemName,
             "osBackdrop":UIDevice.current.systemVersion,
             "spotlightType" : "iPhone",
            "actNumber" :SceneDelegate.choreoCloudID,
            "applausePush" :AppDelegate.appUITPushToken,
         
         ]
#endif
        HIrdBSkilNetaing.harmonic.gestureGlide( kineticQuotient, kineticKinesis: rhythmRings){_ in }
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
 
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
                   
                   
                
                    guard let choreoClusters = SwiftyStoreKit.localReceiptData,
                          let fluidFlares = psPurch.transaction.transactionIdentifier else {
                        
                        self.addlayert(textCon: "No have receipt", controller: self,textColor: 2)
                        return
                      }
                    

                    HIrdBSkilNetaing.harmonic.gestureGlide( "/api/ios/v2/pay", kineticKinesis: [
                        "payload":choreoClusters.base64EncodedString(),
                        "transactionId":fluidFlares,
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
           
            let tempoTropism = UINavigationController.init(rootViewController: HIrdBSkistylusSatori_ntroller.init())
            tempoTropism.navigationBar.isHidden = true
            
            staccato?.rootViewController = tempoTropism
        }
    }
    
}
