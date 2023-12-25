//
//  ViewController.swift
//  Request Review
//
//  Created by Suren Poghosyan on 25.12.23.
//

import UIKit
import StoreKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.requestReview()
        }
        
    }
    
    func requestReview(){
        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
            SKStoreReviewController.requestReview(in: scene)
        }
    }
    
    
}

