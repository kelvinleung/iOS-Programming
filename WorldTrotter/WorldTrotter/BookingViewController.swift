//
//  BookingViewController.swift
//  WorldTrotter
//
//  Created by Kelvin Leung on 15/08/2017.
//  Copyright © 2017 Kelvin Leung. All rights reserved.
//

import UIKit
import WebKit

class BookingViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    
    let url = URL(string: "https://www.bignerdranch.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = url {
            let request = URLRequest(url: url)
            let session = URLSession.shared
            
            let task = session.dataTask(with: request) { (data, response, error) in
                if error == nil {
                    // UIWebView.loadRequest() must be call in the main thread
                    DispatchQueue.main.async { [weak self] in
                        self?.webView.loadRequest(request)
                    }
                }
            }
            
            task.resume()
        }
    }
}
