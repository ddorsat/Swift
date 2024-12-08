//
//  SecondViewController.swift
//  CH37. UIKit
//
//  Created by Dmitry on 08.12.2024.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var myLabel: UILabel!
    @IBAction func showAlert() {
        let alertController = UIAlertController(
            title: "Welcome", message: "Welcome back", preferredStyle: UIAlertController.Style.alert)
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        self.present(alertController, animated: true, completion: nil)
        
    }
    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
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
