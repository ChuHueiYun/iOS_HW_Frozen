//
//  YouTubeViewController.swift
//  Frozen
//
//  Created by user_02 on 2017/10/6.
//  Copyright © 2017年 00357053. All rights reserved.
//

import UIKit

class YouTubeViewController: UIViewController {

    //https://stackoverflow.com/questions/33179698/how-to-embed-a-youtube-video-into-my-app
    
    @IBOutlet weak var wv: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "L0MK7qz13bU")
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
        wv.loadRequest( URLRequest(url: youtubeURL) )
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
