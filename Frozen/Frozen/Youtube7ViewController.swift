//
//  Youtube7ViewController.swift
//  Frozen
//
//  Created by user_02 on 2017/10/13.
//  Copyright © 2017年 00357053. All rights reserved.
//

import UIKit

class Youtube7ViewController: UIViewController {
    //Frozen - Love is an Open Door HD
    @IBOutlet weak var yt7: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "bAjL-dfZq98")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
            else { return }
        yt7.loadRequest( URLRequest(url: youtubeURL) )
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
