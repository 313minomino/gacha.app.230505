//
//  ResultViewController.swift
//  gacha.app.230505
//
//  Created by 酒井実 on 2023/05/05.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        number = Int.random(in: 0...9)
        print(number)
        if number == 9{
            characterImageView.image = UIImage(named: "IoTMesh")
            backgroundImageView.image = UIImage(named: "bgBlue")
        } else if number >= 7 {
            characterImageView.image = UIImage(named: "camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
            // Do any additional setup after loading the view.
        } else {
            characterImageView.image = UIImage(named: "iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {self.characterImageView.center.y += 10.0
        }) { _ in
            self.characterImageView.center.y -= 10.0
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
