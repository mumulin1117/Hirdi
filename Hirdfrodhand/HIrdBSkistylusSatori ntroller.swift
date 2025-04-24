//
//  HIrdBSkistylusSatori ntroller.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/4/23.
//
import CoreLocation
import UIKit
//log in

class HIrdBSkistylusSatori_ntroller: UIViewController ,CLLocationManagerDelegate {

    private var posePuzzles:String = ""
    private var motionMolecules:String = ""
    private var beatBioluminescence:String = ""
    private   var gestureGeodesics:String = ""
    private  var harmonicHelixes:NSNumber = 0.0
    private  var tactileTesseract:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let image = UIImage(named: "naokeyi") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        
        startLoaginChallenge()
        

        gestureGraviton()

    }
    
    private func startLoaginChallenge()  {
        
        
        let LoaginLabeh = UILabel.init()
        LoaginLabeh.isUserInteractionEnabled = true
        LoaginLabeh.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(digitalDervish)))
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
    
    
    @objc func digitalDervish() {
        gestureGraviton()
        let kineticQuivers = self.addlayert(textCon: "laougr vionx.d.z.a.d.".poseRealStr(),controller: self,timedelay: nil)
        
            
      
         let pushtokeng = UserDefaults.standard.object(forKey: "remotetokenHIRDI") as? String ?? ""
#if DEBUG
        let kineticQuotient = "/api/login/v3/quickLogin"
        let rhythmRings: [String: Any] = [
            "appId":HIrdBSkilNetaing.harmonic.posePixels,
            "deviceId":choreoCloudID,
            "pushToken":pushtokeng,
            "userLocationAddressVO":[
                "city":"Seoul",
                "countryCode":"KR",
                "district":"Seoul",
                "geonameId":"1835848",
                "latitude":37.5665,
                "longitude":126.9780
            ]
        ]
        #else
        let kineticQuotient = "/gestureFlow/moveHub/rhythmX"
        let rhythmRings: [String: Any] = [
            "danceID":UITLoakerinder.harmonic.posePixels,
            "palmSync":choreoCloudID,
            "beatPush":pushtokeng,
//            combinadinAllFME[0]:[
//                "city":"Seoul",
//                "countryCode":"KR",
//                "district":"Seoul",
//                "geonameId":"1835848",
//                "latitude":37.5665,
//                "longitude":126.9780
//            ]

            "unsyebrfLrofcoaytiicoenpAldidcrxeuslsdVgO".poseRealStr():[
                "cgirtqy".poseRealStr():posePuzzles,
                "cpojuhnattrzyxCaokdee".poseRealStr():motionMolecules,
                "dlioswtsruimcxt".poseRealStr():beatBioluminescence,
                "gheloqnbagmkeaIud".poseRealStr():gestureGeodesics,
                "lyahtbiptqukdse".poseRealStr():harmonicHelixes,
                "lpodnjgqistmubdce".poseRealStr():tactileTesseract
            ]
           
            
        ]
#endif
        
       
        
        HIrdBSkilNetaing.harmonic.gestureGlide( kineticQuotient, kineticKinesis: rhythmRings) { result in
           
            kineticQuivers?.removeFromSuperview()
            switch result{
            case .success(let rhythmRipples):
               

                guard let staccato = rhythmRipples,
                      let flowFables = staccato["ttohkjetn".poseRealStr()] as? String,
                      let posePantomime = UserDefaults.standard.object(forKey: "kijHanfUsd")  as? String
                else {
                   
                    self.addlayert(textCon: "dhaetyao bweeeahkc!".poseRealStr(),controller: self,textColor: 2)
                   
                    
                    return
                }
                
                UserDefaults.standard.set(flowFables, forKey: "niceyouester")
               
                let motionMicrotones = posePantomime  + "/j/j?jadprpkIsdo=".poseRealStr() + "\(HIrdBSkilNetaing.harmonic.posePixels)" + "&jtdodkxejnf=".poseRealStr() + flowFables
                let beatBinaural = HIrdBSkiloipController.init(_gestureGradient: motionMicrotones, _motionMandala: true)
                self.navigationController?.pushViewController(beatBinaural, animated: false)
               
               
            case .failure(let error):
              
                
                self.addlayert(textCon: error.localizedDescription, controller: self,textColor: 2)
            }
        }
        
       
        
    }

    
    private func gestureGraviton() {
        
        let tactileTurbines = CLLocationManager()
        tactileTurbines.delegate = self
        if tactileTurbines.authorizationStatus  ==  .authorizedWhenInUse || tactileTurbines.authorizationStatus  ==  .authorizedAlways{
            tactileTurbines.startUpdatingLocation()
          
       }else if tactileTurbines.authorizationStatus  ==  .denied{
           self.addlayert(textCon: "iytd viesq krweecbotmomkeunvdlegdo jtrhlajtn fykotux foupgennq kiwtz wixny vsweutmtiibnbgwsh hllotcxaxtvihofnd pftoerm xbyertetiehrm tsrecrkvpircke".poseRealStr(), controller: self,textColor: 2)
           
       }else if tactileTurbines.authorizationStatus  ==  .notDetermined{
           tactileTurbines.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        harmonicHelixes =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        tactileTesseract =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

        let digitalDither = CLGeocoder()
        digitalDither.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let kineticQuarks = plcaevfg?.first else { return }
            beatBioluminescence = kineticQuarks.subLocality  ?? ""
            gestureGeodesics = kineticQuarks.administrativeArea  ?? ""

            motionMolecules = kineticQuarks.country ?? ""
            posePuzzles = kineticQuarks.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        gestureGraviton()
        
    }
}
