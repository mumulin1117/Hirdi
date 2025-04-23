//
//  HIrdBSkilNetaing.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/4/23.
//

import UIKit


var onlyidduserFME:String{
    
    guard let existingID = UIDevice.current.identifierForVendor?.uuidString  else {
              
               return UUID().uuidString
           }
           return existingID
    
}

var window:UIWindow?{
    return (UIApplication.shared.connectedScenes
        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
        .windows
        .first(where: \.isKeyWindow)
}


class HIrdBSkilNetaing: NSObject {
    static let pnolyert = HIrdBSkilNetaing()
    
    // 私有配置
    private var debugBaseURL: String {
        #if DEBUG
        return "https://api.cphub.link"
        #else
        return "https://api.ahtjng.link"
        #endif
    }
    
    // MARK: - 核心请求方法
    func installEnterRemallLastNetiFME(_ path: String,
                                     parameters: [String: Any],
                                     completion: @escaping (Result<[String : Any]?, Error>) -> Void) {
        // 构建请求组件
        guard let url = URL(string: debugBaseURL + path) else {
            return completion(.failure(NSError(domain: "URL Error", code: 400)))
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        
        request.setHeaders([
            "appId": appleidSmalllWrite,
            "appVersion": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
            "deviceNo": onlyidduserFME,
            "language": Locale.current.languageCode ?? "",
            "loginToken": UserDefaults.standard.string(forKey: "femuserlogidectoken") ?? "",
            "Content-Type": "application/json"
        ])
        
        // 异步处理参数序列化
        serializeParameters(parameters) { result in
            switch result {
            case .success(let data):
                request.httpBody = data
                self.executeRequest(request, path: path, completion: completion)
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    // MARK: - 私有方法

  
    
    private func serializeParameters(_ params: [String: Any],
                                    completion: @escaping (Result<Data, Error>) -> Void) {
        do {
            let data = try JSONSerialization.data(withJSONObject: params, options: [])
            completion(.success(data))
        } catch {
            completion(.failure(error))
        }
    }
    
    private func executeRequest(_ request: URLRequest,
                               path: String,
                               completion: @escaping (Result<[String : Any]?, Error>) -> Void) {
        URLSession.shared.dataTask(with: request) { data, response, error in
            // 统一错误处理
            if let error = error {
                return completion(.failure(error))
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode),
                  let data = data else {
                return completion(.failure(NSError(domain: "HTTP Error", code: (response as? HTTPURLResponse)?.statusCode ?? 500)))
            }
            
            // JSON 解析
            do {
                let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
                guard let responseDict = jsonObject as? [String: Any] else {
                    throw NSError(domain: "Data Format Error", code: 500)
                }
                
                // 业务逻辑处理
                if responseDict["code"] as? String == "0000" {
                    completion(.success(responseDict["result"] as? [String: Any]))
                } else {
                    let errorMessage = responseDict["message"] as? String ?? "Unknown Error"
                    throw NSError(domain: "Business Error", code: 0, userInfo: [NSLocalizedDescriptionKey: errorMessage])
                }
                
                // 调试模式特殊处理
                #if DEBUG
                self.handleDebugDisplay(path: path, response: responseDict)
                #endif
                
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    // MARK: - 调试工具
    // MARK: - 调试工具
    #if DEBUG
    let appleidSmalllWrite = "11111111"
    
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
                   DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
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
    let appleidSmalllWrite = "42563156"
    #endif
}

// 扩展简化 Header 设置
extension URLRequest {
    mutating func setHeaders(_ headers: [String: String]) {
        headers.forEach { setValue($0.value, forHTTPHeaderField: $0.key) }
    }
}

