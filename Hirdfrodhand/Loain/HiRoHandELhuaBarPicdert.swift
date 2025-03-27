//
//  HiRoHandELhuaBarPicdert.swift
//  Hirdfrodhand
//
//  Created by Hirdfrodhand on 2025/3/20.
//

import UIKit

class HiRoHandELhuaBarPicdert: UIViewController {
    var tttttt:Int
    init(tttttt: Int) {
        self.tttttt = tttttt
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
   
    
    private lazy var titleLabel: UILabel = {
           
        let label = UILabel()
        if tttttt == 0 {
            label.text = "Welcome to the Hirdi"
        }
        
        if tttttt == 1 {
            label.text = "Plrjiyvkahcryx hPpoqlliycfy".poseRealStr()
        }
        
        if tttttt == 2 {
            label.text = "Tuefrtmvst yohfq kudspe".poseRealStr()
        }
        
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        return label
    }()
    
    private lazy var eulaTextView: UITextView = {
           
        let textView = UITextView()
        textView.backgroundColor = .clear
        textView.isEditable = false
        if tttttt == 0 {
            textView.text = """
            End-User License Agreement (EULA)
            
            Last Updated: [2025-03-20]

            1. License Grant
            
            Hirdi grants you a limited, non-exclusive, revocable license to access and use the Service for personal, non-commercial creative expression purposes, subject to compliance with these terms.

            2. Content Restrictions
            
            You expressly agree NOT to:
            a) Upload content depicting minors in harmful/violent dance scenarios or bullying behavior
            b) Post intentionally misleading choreography tutorials that may cause physical harm
            c) Publish unlicensed third-party choreography without proper attribution (CC BY 4.0 required)
            d) Utilize AI-generated content (ChoreoHand AI outputs) for commercial exploitation without obtaining necessary rights clearance

            3. AI Provisions

            All AI-generated choreography sequences are licensed under Creative Commons BY-NC 4.0
            Training data excludes protected dance styles (registered cultural heritage movements)
            
            4. Termination
            
            Violations may result in:

            Immediate removal of offending content
            Permanent suspension with biometric device ban (using device motion signature)
            
            Privacy Policy

            Data Collection & Use

            1. Creative Data

            Motion capture analytics (60fps skeletal tracking)
            AI processing metadata (choreography pattern hashes)
            Device sensor data (gyroscope/accelerometer readings)
            2. Protection Measures

            Biometric data anonymization within 72 hours
            AES-256 encryption for all video uploads
            Differential privacy for community trend analysis
            3. User Rights

            Right to artistic data portability (export choreo sequences)
            Opt-out of AI training datasets via [email]
            Pseudonymous participation through dance avatar profiles
            4. Age Compliance

            Strict 16+ age gate with facial age estimation
            Parental dashboard for minor talent accounts (under 21)
            """
        }
       
        
        if tttttt == 1 {
            
            textView.text =    """
                        Privacy Policy

                        Data Collection & Use

                        1. Creative Data

                        Motion capture analytics (60fps skeletal tracking)
                        AI processing metadata (choreography pattern hashes)
                        Device sensor data (gyroscope/accelerometer readings)
                        2. Protection Measures

                        Biometric data anonymization within 72 hours
                        AES-256 encryption for all video uploads
                        Differential privacy for community trend analysis
                        3. User Rights

                        Right to artistic data portability (export choreo sequences)
                        Opt-out of AI training datasets via [email]
                        Pseudonymous participation through dance avatar profiles
                        4. Age Compliance

                        Strict 16+ age gate with facial age estimation
                        Parental dashboard for minor talent accounts (under 21)
                        
                        
                          Special Provisions

                          1. AI Ethics Commitment

                          Human review for all AI-generated content exceeding 10k views
                          Cultural sensitivity filters for traditional dance forms
                          2. Commercialization Terms

                          Prohibited: NFT minting of community content without Hirdi's DAO approval
                          Allowed: Licensed merchandise through Hirdi Creator Marketplace (70/30 rev split)
                          3. Dispute Resolution

                          Binding arbitration through WIPO (Geneva) for international users
                          Digital Media Copyright Small Claims opt-in                      
                        
                        
                        """
        }
        
        
        if tttttt == 2 {
            textView.text =      """
                        Community Guidelines

                        Content Moderation Framework

                        1. Three-Strike System

                        1st offense: 7-day feature limitation
                        2nd offense: 30-day creative freeze
                        3rd offense: Permanent biometric ban
                        2. Appeal Process
                        Submit formal reconsideration requests within 14 days including:

                        Motion-captured performance evidence
                        Original choreography timestamp proofs
                        Third-party rights clearance documentation
                        3. Creator Protection

                        Automated content fingerprinting (dCRM system)
                        Blockchain timestamping for original choreo
                        15% royalty share for viral AI-remixed content
                        
                        Special Provisions

                        1. AI Ethics Commitment

                        Human review for all AI-generated content exceeding 10k views
                        Cultural sensitivity filters for traditional dance forms
                        2. Commercialization Terms

                        Prohibited: NFT minting of community content without Hirdi's DAO approval
                        Allowed: Licensed merchandise through Hirdi Creator Marketplace (70/30 rev split)
                        3. Dispute Resolution

                        Binding arbitration through WIPO (Geneva) for international users
                        Digital Media Copyright Small Claims opt-in
                        Recommendation:

                        Add age verification gateway using Jumio or Yoti
                        Implement real-time content screening with Sightengine API
                        Include mandatory compliance checkboxes during video upload flow
                        Provide localized summaries for EU/California/Brazil users
                        These documents should be reviewed by legal counsel specializing in digital creative platforms and AI regulations. Consider implementing an interactive policy tour using Lottie animations to improve user comprehension.
                        
                        """
            
        }
        
        textView.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        textView.textColor = UIColor.init(white: 1, alpha: 0.5)
        textView.textContainerInset = UIEdgeInsets(top: 20, left: 16, bottom: 20, right: 16)
        return textView
    }()
    
    private lazy var policyLinksStack: UIStackView = {
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.spacing = 24
            
            let termsButton = createLinkButton(title: "《Term of service》", action: #selector(showTerms))
            let privacyButton = createLinkButton(title: "《Privacy Policy》", action: #selector(showPrivacy))
            
            stack.addArrangedSubview(termsButton)
            stack.addArrangedSubview(privacyButton)
        if tttttt != 0 {stack.isHidden = true}
            return stack
        }()
        
        private lazy var actionStack: UIStackView = {
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.spacing = 20
            stack.distribution = .fillEqually
            if tttttt != 0 {
                
                let allowButton = createActionButton(title: "Klnzodwuerd".poseRealStr(), color: UIColor(red: 0, green: 255/255, blue: 155/255, alpha: 1.0), action: #selector(allowAccess))
                stack.addArrangedSubview(allowButton)
                
            }else{
                let allowButton = createActionButton(title: "Algerpeaeyn".poseRealStr(), color: UIColor(red: 0, green: 255/255, blue: 155/255, alpha: 1.0), action: #selector(allowAccess))
                let denyButton = createActionButton(title: "Cmajnqcsenl".poseRealStr(), color: .lightGray, action: #selector(denyAccess))
                
                stack.addArrangedSubview(allowButton)
                stack.addArrangedSubview(denyButton)
            }
           
            
            
            return stack
        }()
    
    private func setupUI() {
        view.addSubview(titleLabel)
        view.addSubview(eulaTextView)
       
        view.addSubview(policyLinksStack)
        view.addSubview(actionStack)
        
        // AutoLayout Constraints
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        eulaTextView.translatesAutoresizingMaskIntoConstraints = false
        policyLinksStack.translatesAutoresizingMaskIntoConstraints = false
        actionStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
         
            
            policyLinksStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            policyLinksStack.bottomAnchor.constraint(equalTo: actionStack.topAnchor, constant: -25),
            
            actionStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            actionStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            actionStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            actionStack.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        eulaTextView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.bottom.equalTo(policyLinksStack.snp.top)
        }
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage(named: "hanfledance") {
               
            view.layer.contents = image.cgImage
            // 设置内容模式（可选）
            view.layer.contentsGravity = .resizeAspectFill
        }
        setupUI()
    }
    // MARK: - Button Creators
        private func createLinkButton(title: String, action: Selector) -> UIButton {
            let button = UIButton()
            button.setTitle(title, for: .normal)
            button.setTitleColor(UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1), for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
            button.addTarget(self, action: action, for: .touchUpInside)
            return button
        }
        
        private func createActionButton(title: String, color: UIColor, action: Selector) -> UIButton {
            let button = UIButton()
            button.setTitle(title, for: .normal)
            button.backgroundColor = color
            button.layer.cornerRadius = 12
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
            button.addTarget(self, action: action, for: .touchUpInside)
            return button
        }
        
        // MARK: - Actions
        @objc private func showTerms() {
            let eluai = HiRoHandELhuaBarPicdert.init(tttttt: 2)
            self.navigationController?.pushViewController(eluai, animated: true)
        }
        
        @objc private func showPrivacy() {
            let eluai = HiRoHandELhuaBarPicdert.init(tttttt: 1)
            self.navigationController?.pushViewController(eluai, animated: true)
        }
        
        @objc private func allowAccess() {
            if self.tttttt != 0 {
                self.navigationController?.popViewController(animated: true)
                return
            }
            dismiss(animated: true)
            UserDefaults.standard.setValue(true, forKey: "addkoplpoiu")
            NotificationCenter.default.post(name: NSNotification.Name.init("upadaterinnoti"), object: nil)
        }
        
        @objc private func denyAccess() {
            dismiss(animated: true)
            UserDefaults.standard.setValue(false, forKey: "addkoplpoiu")
            NotificationCenter.default.post(name: NSNotification.Name.init("upadaterinnoti"), object: nil)
        }
        
       


}
