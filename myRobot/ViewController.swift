//
//  ViewController.swift
//  myRobot
//
//  Created by Alex on 07/09/2017.
//  Copyright © 2017 Alictronix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var web: UIWebView!
    var ipAdd: String = ""
    var url: String = ""
    var urlF: String = ""
    var urlB: String = ""
    var urlR: String = ""
    var urlL: String = ""
    var urlS: String = ""

    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var input: UITextField!
    @IBAction func setIP(_ sender: Any) {
        ipAdd=input.text!
        label.text=ipAdd
        
        url="http://"
        url+=ipAdd
        
        urlS+=url
        urlS+="/key/1"
        
        urlF+=url
        urlF+="/key/2"
        
        urlR += url
        urlR += "/key/4"
        
        urlL += url
        urlL += "/key/5"
        
        urlB += url
        urlB += "/key/3"
        
    }
    
    
    @IBOutlet weak var temp: UILabel!
    
    
    @IBAction func Forward(_ sender: Any) {
        temp.text=urlF
        let requestURL = URL(string: urlF)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
    
    @IBAction func Forwardx(_ sender: Any) {
        temp.text=urlS
        let requestURL = URL(string: urlS)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
    @IBAction func Right(_ sender: Any) {
        
        temp.text=urlR
        let requestURL = URL(string: urlR)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
    
    @IBAction func Rightx(_ sender: Any) {
        temp.text=urlS
        let requestURL = URL(string: urlS)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
    
    @IBAction func Left(_ sender: Any) {
        temp.text=urlL
        let requestURL = URL(string: urlL)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
    
    @IBAction func Leftx(_ sender: Any) {
        temp.text=urlS
        let requestURL = URL(string: urlS)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
    @IBAction func Back(_ sender: Any) {
        temp.text=urlB
        let requestURL = URL(string: urlB)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
    
    @IBAction func Backx(_ sender: Any) {
        temp.text=urlS
        let requestURL = URL(string: urlS)
        let request = URLRequest(url: requestURL!)
        web.loadRequest(request)
    }
}

