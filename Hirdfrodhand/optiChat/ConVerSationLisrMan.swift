//
//  ConVerSationLisrMan.swift
//  Hirdfrodhand
//
//  Created by  on 2025/3/24.
//

import UIKit

struct MeasgeHird {
    var timeDate:String
    var isLoaguser:Bool
    var meaage:String
}

struct ChatConversation {
    var diploagUser:Dictionary<String,String>
    var listMessage:Array<MeasgeHird>  = Array<MeasgeHird>()
    

}
class ConVerSationLisrMan {
    static let shared = ConVerSationLisrMan()
    
     var conversations: [ChatConversation] = []
    
    private  init() {
        
        let servetr =  UserDefaults.standard.object(forKey: "logeduserhiedIndj") as? Dictionary<String,String>
        
        for (iko,itemi) in AppDelegate.totalinguseindi.enumerated() {
            
            let Arrlusur = Array<MeasgeHird>()
            
            var newwww = ChatConversation.init(diploagUser: itemi, listMessage:Arrlusur )
            
            if servetr?["hiroUID"] == "hirdi@gmail.com" &&  iko == 0 {
                let Aneng = MeasgeHird.init(timeDate: "2025-03-22 10:21:11", isLoaguser: false, meaage: "Your dance was amazing!")
                
                newwww.listMessage.append(Aneng)
            }
            
            if servetr?["hiroUID"] == "hirdi@gmail.com" &&  iko == 1 {
               
                let Aneng1 = MeasgeHird.init(timeDate: "2025-03-22 10:21:11", isLoaguser: false, meaage: "How's it going?")
                
                newwww.listMessage.append(Aneng1)
            }
            
            
            if servetr?["hiroUID"] == "hirdi@gmail.com" &&  iko == 2 {
                
                let Anen2 = MeasgeHird.init(timeDate: "2025-03-22 10:21:11", isLoaguser: false, meaage: "How do you do?")
                newwww.listMessage.append(Anen2)
            }
            
            conversations.append(newwww)

        }
       
    }
    
    
    func addnewrsermeaaage(measge:MeasgeHird,diploagUser:Dictionary<String,String>) {
        for (sk,ijiui) in conversations.enumerated() {
            if ijiui.diploagUser["hiroUID"] == diploagUser["hiroUID"]{
                conversations[sk].listMessage.append(measge)
            }
        }
        
    }
    
}
