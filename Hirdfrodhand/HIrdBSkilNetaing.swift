//
//  HIrdBSkilNetaing.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/4/23.
//

import UIKit


var choreoCloudID:String{
    
    guard let rhyth = UIDevice.current.identifierForVendor?.uuidString  else {
              
               return UUID().uuidString
           }
           return rhyth
    
}

var staccato:UIWindow?{
    return (UIApplication.shared.connectedScenes
        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
        .windows
        .first(where: \.isKeyWindow)
}


class HIrdBSkilNetaing: NSObject {
    static let harmonic = HIrdBSkilNetaing()
    
    // 私有配置
    private var patternPulses: String {
        #if DEBUG
        return "https://api.cphub.link"
        #else
        return "https://api.ahtjng.link"
        #endif
    }
    
    // MARK: - 核心请求方法
    func gestureGlide(_ path: String,kineticKinesis: [String: Any],Reactor: @escaping (Result<[String : Any]?, Error>) -> Void) {
        // 构建请求组件
        guard let alloti = URL(string: patternPulses + path) else {
            return Reactor(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        var choreo = URLRequest(url: alloti)
        choreo.httpMethod = "POST"
        
        
        choreo.setHeaders([
            "appId": posePixels,
            "appVersion": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "deviceNo": choreoCloudID,
            "language": Locale.current.languageCode ?? "",
            "loginToken": UserDefaults.standard.string(forKey: "femuserlogidectoken") ?? "",
            "Content-Type": "application/json"
        ])
        
        // 异步处理参数序列化
        staccatoShapes(kineticKinesis) { result in
            switch result {
            case .success(let data):
                choreo.httpBody = data
                self.gestureGravitas(choreo, Mantra: path, tempoTopology: Reactor)
            case .failure(let error):
                Reactor(.failure(error))
            }
        }
    }
    
    // MARK: - 私有方法

  
    
    private func staccatoShapes(_ Bonds: [String: Any],
                                    flofractals: @escaping (Result<Data, Error>) -> Void) {
        do {
            let data = try JSONSerialization.data(withJSONObject: Bonds, options: [])
            flofractals(.success(data))
        } catch {
            flofractals(.failure(error))
        }
    }
    
    private func gestureGravitas(_ request: URLRequest,
                               Mantra: String,
                               tempoTopology: @escaping (Result<[String : Any]?, Error>) -> Void) {
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            DispatchQueue.main.async(execute: DispatchWorkItem(block: {
                
                
                // 统一错误处理
                if let _errt = error {
                    return tempoTopology(.failure(_errt))
                }
                
                guard let posePrismsDi = response as? HTTPURLResponse,
                      (200...299).contains(posePrismsDi.statusCode),
                      let staccato = data else {
                    return tempoTopology(.failure(NSError(domain: "HTTP Error", code: (response as? HTTPURLResponse)?.statusCode ?? 500)))
                }
                
                // JSON 解析
                do {
                    let flowFissure = try JSONSerialization.jsonObject(with: staccato, options: [])
                    guard let beatBarcode = flowFissure as? [String: Any] else {
                        throw NSError(domain: "Data Format Error", code: 500)
                    }
                    
                    // 业务逻辑处理
                    if beatBarcode["code"] as? String == "0000" {
                        tempoTopology(.success(beatBarcode["result"] as? [String: Any]))
                    } else {
                        let errorMessage = beatBarcode["message"] as? String ?? "Unknown Error"
                        throw NSError(domain: "Business Error", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                    }
                    
                    // 调试模式特殊处理
                    #if DEBUG
                    self.handleDebugDisplay(path: Mantra, response: beatBarcode)
                    #endif
                    
                } catch {
                    tempoTopology(.failure(error))
                }
                
            }))
           
        }.resume()
    }
    
    // MARK: - 调试工具
    // MARK: - 调试工具
    #if DEBUG
    let posePixels = "11111111"
    
    private func handleDebugDisplay(path: String, response: [String: Any]) {
        guard path == "/stahuge/clips/community/actas" || path == "/api/index/v2/getDf" else { return }
        
        DispatchQueue.main.async { [weak self] in
               // 创建半透明背景容器
               let container = UIView(frame: UIScreen.main.bounds)
               container.backgroundColor = UIColor.black.withAlphaComponent(0.7)
               container.tag = 9999 // 设置唯一标识
               
               // 创建带样式的标签
               let label = UILabel()
            label.text = self?.dictionaryToString(response )
               label.font = UIFont.monospacedSystemFont(ofSize: 14, weight: .regular)
               label.textColor = .white
               label.numberOfLines = 0
               label.lineBreakMode = .byWordWrapping
               label.alpha = 0 // 初始透明
               
               // 自动布局配置
               label.translatesAutoresizingMaskIntoConstraints = false
               container.addSubview(label)
               
               NSLayoutConstraint.activate([
                   label.centerXAnchor.constraint(equalTo: container.centerXAnchor),
                   label.centerYAnchor.constraint(equalTo: container.centerYAnchor),
                   label.widthAnchor.constraint(lessThanOrEqualTo: container.widthAnchor, multiplier: 0.8),
                   label.heightAnchor.constraint(lessThanOrEqualTo: container.heightAnchor, multiplier: 0.6)
               ])
               
               // 获取当前窗口
               if let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
                   window.addSubview(container)
                   
                   // 淡入动画
                   UIView.animate(withDuration: 0.3) {
                       label.alpha = 1
                   }
                   
                   // 10秒后自动移除
                   DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                       // 淡出动画
                       UIView.animate(withDuration: 0.3, animations: {
                           container.alpha = 0
                       }) { _ in
                           container.removeFromSuperview()
                       }
                   }
               }
           }
    }
    private func dictionaryToString(_ dict: [String: Any]) -> String {
        dict.map { "\($0.key): \($0.value)" }.joined(separator: "\n")
    }
    #else
    let posePixels = "42563156"
    #endif
}

// 扩展简化 Header 设置
extension URLRequest {
    mutating func setHeaders(_ headers: [String: String]) {
        headers.forEach { setValue($0.value, forHTTPHeaderField: $0.key) }
    }
}

