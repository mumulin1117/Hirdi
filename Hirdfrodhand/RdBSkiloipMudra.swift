//
//  RdBSkiloipMudra.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/4/23.
//

import UIKit
import SwiftyStoreKit
import WebKit
import StoreKit


class RdBSkiloipMudra: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    // MARK: - 增强配置系统
        private struct WebConfig {
            let timeout: TimeInterval
            let cachePolicy: URLRequest.CachePolicy
            let mediaTypes: [String]
            let injectionRules: [String: String]
            
            static let `default` = WebConfig(
                timeout: 30,
                cachePolicy: .returnCacheDataElseLoad,
                mediaTypes: ["public.html", "public.image"],
                injectionRules: [
                    "blockPatterns": "ad,popup",
                    "cssOverrides": "body{font-size:16pt}"
                ]
            )
        }
    
    private var tactileTesserae: WKWebView?
    private var loadState = LoadState.idle
    
    
    private enum LoadState {
            case idle, loading, finished, failed(Error)
            var description: String {
                switch self {
                case .idle: return "准备就绪"
                case .loading: return "加载中..."
                case .finished: return "加载完成"
                case .failed(let err): return "错误: \(err.localizedDescription)"
                }
            }
        }
    
    
       private var motionMandala: Bool
       private var gestureGradient: String
       
       var lakdj: UILabel?
       
       init(_gestureGradient: String, _motionMandala: Bool) {
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
           configureScriptMessageHandlers()
       }
       
       override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
           self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
           removeScriptMessageHandlers()
       }
       
       private func configureScriptMessageHandlers() {
           let handlers = ["Pqayy", "Cilforsue","phacgaemLzowaodvepd"]
           handlers.forEach { handlerName in
               tactileTesserae?.configuration.userContentController.add(self, name:
                                                                            
                                                                            handlerName.poseRealStr())
           }
       }
       
       private func removeScriptMessageHandlers() {
           tactileTesserae?.configuration.userContentController.removeAllScriptMessageHandlers()
       }
       
       private func startLoadingChallenge() {
           let loadingLabel = createLoadingLabel()
           view.addSubview(loadingLabel)
           
           loadingLabel.snp.makeConstraints { make in
               make.leading.trailing.equalToSuperview().inset(15)
               make.height.equalTo(48)
               make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 15 - 40 - 10)
           }
       }
       
       private func createLoadingLabel() -> UILabel {
           let label = UILabel()
           label.isUserInteractionEnabled = true
           label.textColor = .white
           label.textAlignment = .center
           label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
           label.text = "Lxowgw cizn".poseRealStr()
           label.layer.cornerRadius = 25
           label.layer.masksToBounds = true
           label.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
           return label
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           configureBackgroundImage()
           
           if motionMandala {
               startLoadingChallenge()
           }
           
           configureWebView()
           configureLabel()
       }
       
       private func configureBackgroundImage() {
           if let image = UIImage(named: "naokeyi") {
               view.layer.contents = image.cgImage
               view.layer.contentsGravity = .resizeAspectFill
           }
       }
       
       private func configureWebView() {
           let config = WKWebViewConfiguration()
           config.allowsAirPlayForMediaPlayback = false
           config.allowsInlineMediaPlayback = true
           config.preferences.javaScriptCanOpenWindowsAutomatically = true
           config.mediaTypesRequiringUserActionForPlayback = []
           
           tactileTesserae = WKWebView(frame: UIScreen.main.bounds, configuration: config)
           self.view.addSubview(tactileTesserae!)
           tactileTesserae?.snp.makeConstraints({ make in
               make.edges.equalToSuperview()
           })
           alpovsad()
           jaudayilose()
       }
       
       private func configureLabel() {
           let labelText = motionMandala ? "lrokgz tivnn.z.n.z.y.".poseRealStr() : "Rqewqlueecshtdibnggb.w.v.".poseRealStr()
           lakdj = addlayert(textCon: labelText, controller: self, timedelay: nil)
       }
    
    
    func jaudayilose() {
        tactileTesserae?.scrollView.contentInsetAdjustmentBehavior = .never
        tactileTesserae?.navigationDelegate = self
        tactileTesserae?.uiDelegate = self
        tactileTesserae?.allowsBackForwardNavigationGestures = true
        
        if let urie = URL.init(string: gestureGradient) {
            tactileTesserae?.load(URLRequest(url:urie ))
        }
        
    }
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(WKPermissionDecision.grant)
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
    }
    
    private func alpovsad()  {
        tactileTesserae?.isHidden = true
        tactileTesserae?.translatesAutoresizingMaskIntoConstraints = false
        tactileTesserae?.scrollView.alwaysBounceVertical = false
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    
    private func updateStateIndicator() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            switch self.loadState {
            case .loading:
               
                break
            default:
                break
            }
        }
        
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
    
    private func handleLoadError(_ error: Error) {
        loadState = .failed(error)
        
        let alert = UIAlertController(
            title: "Load error",
            message: error.localizedDescription,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "", style: .default) { _ in
            self.tactileTesserae?.reload()
        })
        present(alert, animated: true)
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        tactileTesserae?.isHidden = false
        self.lakdj?.removeFromSuperview()
        
        handleMotionMandalaIfNeeded()
        
        let pushtokeng = UserDefaults.standard.object(forKey: "remotetokenHIRDI") as? String ?? ""
        
        let kineticQuotient: String
        let rhythmRings: [String: Any]
        

        kineticQuotient = "/pulseWave/aiMotion/identityY"
        rhythmRings = createReleaseRhythmRings(pushToken: pushtokeng)

        JnanaVedanta.harmonic.gestureGlide(kineticQuotient, kineticKinesis: rhythmRings) { _ in }
    }

    private func handleMotionMandalaIfNeeded() {
        if motionMandala == true {
            self.addlayert(textCon: "Lfomgoienk osrufcvcbebsxscfkutl".poseRealStr(), controller: self, textColor: 1)
            motionMandala = false
        }
    }

    private func createReleaseRhythmRings(pushToken: String) -> [String: Any] {
        return [
            "choreoVer": Bundle.main.object(forInfoDictionaryKey: "CzFcBauqnbdelneuSwhbodrltfVxefrzsqijojnySbtrrrirndg".poseRealStr()) as? String ?? "1.1.0",
            "rhythmCh": "AePcPkSsTrOtRoE".poseRealStr(),
            "osTempo": UIDevice.current.systemName,
            "osFlow": UIDevice.current.systemVersion,
            "palmType": "ixPdhxojnce".poseRealStr(),
            "stepNo": choreoCloudID,
            "syncPulse": pushToken,
        ]
    }

    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "Pgasy".poseRealStr(), let mesgidhFME = message.body as? String {
            handlePurchaseMessage(mesgidhFME)
        } else if message.name == "Cnlaoeste".poseRealStr() {
            handleLogoutMessage()
        }else if message.name == "phacgaemLzowaodvepd".poseRealStr(){
            
            
            tactileTesserae?.isHidden = false
            self.lakdj?.removeFromSuperview()
        }
    }

    private func handlePurchaseMessage(_ mesgidhFME: String) {
        view.isUserInteractionEnabled = false
        
        self.lakdj = self.addlayert(textCon: "Rkekqgudecsetgimnqga.i.b.".poseRealStr(), controller: self, timedelay: nil)
        
        SwiftyStoreKit.purchaseProduct(mesgidhFME, atomically: true) { psResult in
            self.lakdj?.removeFromSuperview()
            
            switch psResult {
            case .success(let psPurch):
                self.handlePurchaseSuccess(psPurch)
            case .error(let error):
                self.handlePurchaseError(error)
            }
        }
    }
    
    func handlePurchaseError(_ error:SKError) {
        self.view.isUserInteractionEnabled = true
                           
                           
        if error.code != .paymentCancelled {
            
        
            self.addlayert(textCon: error.localizedDescription, controller: self,textColor: 2)
            return
        }
    }

    private func handlePurchaseSuccess(_ psPurch: PurchaseDetails) {
        let psdownloads = psPurch.transaction.downloads
        
        if !psdownloads.isEmpty {
            SwiftyStoreKit.start(psdownloads)
        }
        
        if psPurch.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(psPurch.transaction)
        }
        
        guard let choreoClusters = SwiftyStoreKit.localReceiptData,
              let fluidFlares = psPurch.transaction.transactionIdentifier else {
            self.addlayert(textCon: "Nkoc hhrawvkeo drsegcxepilpyt".poseRealStr(), controller: self, textColor: 2)
            return
        }
        
        JnanaVedanta.harmonic.gestureGlide("/xaipein/eimodsq/pvm2a/vpqaty".poseRealStr(), kineticKinesis: [
            "pyalyelroiazd".poseRealStr(): choreoClusters.base64EncodedString(),
            "tdroaqnyszagcttjipownsIhd".poseRealStr(): fluidFlares,
            "txytpje".poseRealStr(): "diitruelcjt".poseRealStr()
        ]) { result in
            self.view.isUserInteractionEnabled = true
            
            switch result {
            case .success(_):
                self.addlayert(textCon: "Tyhzep dpeuerqcehdarscej qwqasso asfufcwcqegsushfeuile!".poseRealStr(), controller: self, textColor: 1)
            case .failure(let error):
                self.addlayert(textCon: "Ebrwrsojr".poseRealStr(), controller: self, textColor: 2)
            }
        }
    }

    private func handleLogoutMessage() {
        UserDefaults.standard.set(nil, forKey: "niceyouester")
        let label = UILabel()
        let tempoTropism = UINavigationController.init(rootViewController: HIrdBSkistylusSatori_ntroller.init())
       
        
        label.textColor = .white
        
        tempoTropism.navigationBar.isHidden = true
        label.textAlignment = .center
       
        staccato?.rootViewController = tempoTropism
        label.isUserInteractionEnabled = true
    }
    
}
