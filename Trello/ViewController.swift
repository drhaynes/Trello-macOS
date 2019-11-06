//
//  ViewController.swift
//  Trello
//
//  Created by David Haynes on 15/10/2019.
//  Copyright © 2019 MBP Consulting Ltd. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let url = URL(string: "https://trello.com") else {
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}
