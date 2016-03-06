//
//  HistoryEnfViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 06/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HistoryEnfViewController: UIViewController {

    @IBOutlet weak var dpFecha: UIDatePicker!
    @IBOutlet weak var tfAlergias: UITextField!
    @IBOutlet weak var tfEnfermedades: UITextField!
    @IBOutlet weak var tfMedicamentos: UITextField!
    @IBOutlet weak var tfComentarios: UITextField!
    @IBOutlet weak var btGuardar: UIButton!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 82.0/255.0, green: 78.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
