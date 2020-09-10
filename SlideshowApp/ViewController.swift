//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Akina Yamanishi on 2020/09/09.
//  Copyright © 2020 Akina.Yamanishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBAction func tapAction(_ sender: Any) {
    }
    
    @IBAction func unwind(_ Segue: UIStoryboardSegue) {
        
    }
    
    var imageIndex = 0
    var timer: Timer!
    var timer_sec:Float = 0
    let images = [UIImage(named: "a.jpeg"),UIImage(named: "b.jpg"),UIImage(named: "c.jpg")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = images[0]
        ImageView.image = imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func backImage(_ sender: Any) {
        if imageIndex == 0{
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        ImageView.image = images[imageIndex]
    }
    
    @IBAction func nextImage(_ sender: Any) {
        if imageIndex == 2 {
        imageIndex = 0
        } else {
            imageIndex += 1
        }
        ImageView.image = images[imageIndex]
    }
    
    @IBAction func startStop(_ sender: Any) {
        if (timer == nil){
       timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
        } else {
            timer.invalidate()
            timer = nil
        }
    }
    
    @objc func onTimer(_ timer: Timer) {
        if imageIndex == 2{
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        ImageView.image = images[imageIndex]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        resultViewController.image = ImageView.image!
    }

}

