//
//  PhotoDetailsViewController.swift
//  tumblr_lab
//
//  Created by user144860 on 9/11/18.
//  Copyright © 2018 Fleurevca Francois. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    
    @IBOutlet weak var posterDetailView: UIImageView!
    
    var post: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let post = post {
            let photos = post["photos"] as? [[String: Any]]
            let photo = photos![0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            
            posterDetailView.af_setImage(withURL: url!)
        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
