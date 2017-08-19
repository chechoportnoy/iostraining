//
//  WebViewController.swift
//  UnionApp2
//
//  Created by Sergio Huerta on 8/19/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webView.delegate=self
        let localFilePath = Bundle.main.url(forResource: "Particulas/particulas", withExtension: "html")
        let myRequest = URLRequest(url: localFilePath!)
        webView.loadRequest(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - WebView Delegate
    func webViewDidStartLoad(_ webView: UIWebView) {
        indicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicator.stopAnimating()    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
