//
//  WebViewController.swift
//  Pokedex
//
//  Created by Daniel  on 04/11/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    var race : Race?

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var str = "http://es.pokemon.wikia.com"
        
        if race != nil {
            title = race!.name
            
            if let path = "wiki/\(race!.name)".addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) {
                str = "\(str)/\(path)"
            }
        } else {
            title = "Pokedex"
        }
        
        if let url = URL(string: str) {
            let req = URLRequest(url: url)
            webView.load(req)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
