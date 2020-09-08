//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Akina Yamanishi on 2020/09/09.
//  Copyright © 2020 Akina.Yamanishi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var tapGestureRecognizer: UITapGestureRecognizer!
    @IBOutlet weak var ImageView: UIImageView!
    
    var image:UIImage = UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = image

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
