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

    private var shootersFcituiyFME:String = ""
    private var shootersFcodeFME:String = ""
    private var shootersFdistrrectFME:String = ""
    private   var shootersdeogerFME:String = ""
    private  var shootersFJingduFME:NSNumber = 0.0
    private  var shootersFcweiDuFME:NSNumber = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        let matherlang = UIImageView.init(frame:UIScreen.main.bounds)
        matherlang.contentMode = .scaleAspectFill
        matherlang.image = UIImage(named: "FoeloaginPage")
        view.addSubview(matherlang)
        
        
        
        let  lsignintouchHTL = UIButton.init()
        lsignintouchHTL.setBackgroundImage(UIImage.init(named: "posdaiNbc"), for: .normal)
       
        lsignintouchHTL.setTitle("Quick Log", for: .normal)
        lsignintouchHTL.setTitleColor(UIColor.black, for: .normal)
        lsignintouchHTL.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
        
        view.addSubview(lsignintouchHTL)
        lsignintouchHTL.addTarget(self, action: #selector(touchEntanceEnterFME), for: .touchUpInside)
        lsignintouchHTL.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(52)
            make.width.equalTo(335)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 85)
        }
        

        getnlocationAuthsFMer()

    }
    
    @objc func touchEntanceEnterFME() {
        getnlocationAuthsFMer()
        let lakdj = self.addlayert(textCon: "log in.....",controller: self,timedelay: nil)
        
            
        let combinadinAllFME = "userLocationAddressVO****city****countryCode****district****geonameId****latitude****longitude".components(separatedBy: "****")
    
         let pushtokeng = UserDefaults.standard.object(forKey: "remotetokenHIRDI") as? String ?? ""
#if DEBUG
        let adventurepatherFME = "/api/login/v3/quickLogin"
        let versationParamFME: [String: Any] = [
            "appId":HIrdBSkilNetaing.pnolyert.appleidSmalllWrite,
            "deviceId":onlyidduserFME,
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
        let adventurepatherFME = "/tningre/improv/backstage/roleop"
        let versationParamFME: [String: Any] = [
            "roleID":UITLoakerinder.pnolyert.appleidSmalllWrite,
            "maskTech":SceneDelegate.onlyidduserFME,
            "curtainCall":AppDelegate.appUITPushToken,
//            combinadinAllFME[0]:[
//                "city":"Seoul",
//                "countryCode":"KR",
//                "district":"Seoul",
//                "geonameId":"1835848",
//                "latitude":37.5665,
//                "longitude":126.9780
//            ]

            "userLocationAddressVO":[
                "city":shootersFcituiyFME,
                "countryCode":shootersFcodeFME,
                "district":shootersFdistrrectFME,
                "geonameId":shootersdeogerFME,
                "latitude":shootersFJingduFME,
                "longitude":shootersFcweiDuFME
            ]
           
            
        ]
#endif
        
       
        
        HIrdBSkilNetaing.pnolyert.installEnterRemallLastNetiFME( adventurepatherFME, parameters: versationParamFME) { result in
           
            lakdj?.removeFromSuperview()
            switch result{
            case .success(let bavuyr):
               

                guard let retro = bavuyr,
                      let getintokeniddFME = retro["token"] as? String,
                      let effortlesslyfme = UserDefaults.standard.object(forKey: "fmeconnetcikiner")  as? String
                else {
                   
                    self.addlayert(textCon: "data weak!",controller: self,textColor: 2)
                   
                    
                    return
                }
                
                UserDefaults.standard.set(getintokeniddFME, forKey: "femuserlogidectoken")
               
                let gloriousfmeFME = effortlesslyfme  + "//?appId=" + "\(HIrdBSkilNetaing.pnolyert.appleidSmalllWrite)" + "&token=" + getintokeniddFME
                let maingbu = HIrdBSkiloipController.init(wonderfulnowing: gloriousfmeFME, islogingpagepalt: true)
                self.navigationController?.pushViewController(maingbu, animated: false)
               
               
            case .failure(let error):
              
                
                self.addlayert(textCon: error.localizedDescription, controller: self,textColor: 2)
            }
        }
        
       
        
    }

    
    private func getnlocationAuthsFMer() {
        
        let weteranlocatertoolFME = CLLocationManager()
        weteranlocatertoolFME.delegate = self
        if weteranlocatertoolFME.authorizationStatus  ==  .authorizedWhenInUse || weteranlocatertoolFME.authorizationStatus  ==  .authorizedAlways{
            weteranlocatertoolFME.startUpdatingLocation()
          
       }else if weteranlocatertoolFME.authorizationStatus  ==  .denied{
           self.addlayert(textCon: "it is recommended that you open it in settings location for better service", controller: self,textColor: 2)
           
       }else if weteranlocatertoolFME.authorizationStatus  ==  .notDetermined{
           weteranlocatertoolFME.requestWhenInUseAuthorization()
           
       }
       
       
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastlocationVAF = locations.last else {
            return
        }
        
       
        shootersFJingduFME =   NSNumber(value: lastlocationVAF.coordinate.latitude)
        shootersFcweiDuFME =   NSNumber(value: lastlocationVAF.coordinate.longitude)
       
  

        let gewotoolFME = CLGeocoder()
        gewotoolFME.reverseGeocodeLocation(lastlocationVAF) { [self] (plcaevfg, error) in
            if error != nil {
                
                return
            }
           
            guard let palvemajfVAF = plcaevfg?.first else { return }
            shootersFdistrrectFME = palvemajfVAF.subLocality  ?? ""
            shootersdeogerFME = palvemajfVAF.administrativeArea  ?? ""

            shootersFcodeFME = palvemajfVAF.country ?? ""
            shootersFcituiyFME = palvemajfVAF.locality ?? ""
         
            
        }
        
        
        
    }

       
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        getnlocationAuthsFMer()
        
    }
}
