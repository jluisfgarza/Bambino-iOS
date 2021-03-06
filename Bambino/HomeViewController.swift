//
//  HomeViewController.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lbUsuario: UILabel!
    
    var appData: ApplicationData!
    var arrMostrar: [Vacuna] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(red: 0.48627450980392156, green: 0.070588235294117646, blue: 0.46274509803921571, alpha: 1)
        self.view.addSubview(proxyViewForStatusBar)
        
        
        UIToolbar.appearance().barTintColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 1.0)
        
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 72.0/255.0, green: 190.0/255.0, blue: 176.0/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
        
        self.lbUsuario.text = "Hola \(self.appData.mama.strNombre)"
        
        var icont = 0
        var index = 0
        
        while index < self.appData.mama.bebBabies[0].arrVacunas.count && icont < 3 {
            if !self.appData.mama.bebBabies[0].arrVacunas[index].boolStatus {
                icont++
                arrMostrar.append(self.appData.mama.bebBabies[0].arrVacunas[index])
            }
        }
        
        //let months = NSCalendar.currentCalendar().components(.Month, fromDate: self.appData.mama.bebBabies[appData.mama.bebBabies.count - 1].fechaNacimiento, toDate: NSDate(), options: []).month
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
    
    // Configure the cell...
    
    return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        self.navigationController?.toolbarHidden = false
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segueEvento"  || segue.identifier == "pediatra" || segue.identifier == "historial" {
            let view = segue.destinationViewController as! SelectKidTableViewController
            view.appData = self.appData
            view.segueID = segue.identifier
        }
        else if segue.identifier == "segueAddBaby" {
            let view = segue.destinationViewController as! AddBabyViewController
            view.appData = self.appData
        }
    }
}
