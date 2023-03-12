//
//  ViewController.swift
//  EATERquiz-JesseWilliams
//
//  Created by Williams, Jesse on 3/11/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var pizza:Int = 0
    var sushi:Int = 0
    var taco:Int = 0
    var hamburger:Int = 0
    var broccoli:Int = 0
    var celery:Int = 0
    var ribs:Int = 0
    var broccolibonus:Int = 0
    var total:Int = 0
    
    
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBAction func selectPizza(_ sender: UISwitch) {if sender.isOn {
        pizza = 1
        }
   else {
        pizza = 0
        }
        }
    
    @IBAction func selectTaco(_ sender: UISwitch) {if sender.isOn {
        taco = 1
        }
   else {
        taco = 0
        }
        }
    
    @IBAction func selectHamburger(_ sender: UISwitch) {if sender.isOn {
        hamburger = 1
        }
   else {
        hamburger = 0
        }
        }
    
    @IBAction func selectSushi(_ sender: UISwitch) {if sender.isOn {
        sushi = 1
        }
   else {
        sushi = 0
        }
        }
    
    @IBAction func selectBroccoli(_ sender: UISwitch) {if sender.isOn {
        broccoli = 1
        }
   else {
        broccoli = 0
        }
        }
    
    @IBOutlet weak var broccoliswitch: UISwitch!
   
    @IBAction func selectCelery(_ sender: UISwitch) {if sender.isOn {
        celery = 1
        }
   else {
        celery = 0
        }
        }
    
    @IBAction func selectRibs(_ sender: UISwitch) {if sender.isOn {
        ribs = 1
        }
   else {
        ribs = 0
        }
        }
    
    @IBAction func submit(_ sender: Any) {
        let name = myName.text!
        total = pizza + sushi + taco + hamburger + broccoli + ribs + celery + broccolibonus
        if(total <= 2) {
           myTotal.text = "\(name), you are very picky!"
            myImage.image = UIImage(named: "pickyeater")
                }
        
        else if(total > 2 && total <= 3){
           myTotal.text = "\(name), you like some foods"
            myImage.image = UIImage(named: "somefoods")
                }
        else if(total > 3 && total <= 4){
           myTotal.text = "\(name), you like most foods"
            myImage.image = UIImage(named: "mostfoods")
                }
        else {
             myTotal.text = "\(name), you are an adventurous eater!"
            myImage.image = UIImage(named: "adventurouseater")
                }
            }
        
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBAction func myRating(_ sender: UISlider) {
        if broccoliswitch.isOn {
            broccolibonus = Int(sender.value)
        } else {
            if sender.value >= 3 {
                let alert = UIAlertController(title: "Are you sure?", message: "Did you forget to check the broccoli?", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                    self.broccoliswitch.isOn = true
                    if self.broccoliswitch.isOn {
                        self.broccolibonus = Int(sender.value)
                    } 
                }))
                alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
                present(alert, animated: true, completion: nil)
            } else {
                broccolibonus = 0
            }
        }
    }
    
    
    @IBAction func submitname(_ sender: Any) {myName.resignFirstResponder()
    }
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

