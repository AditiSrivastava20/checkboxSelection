//
//  ViewController.swift
//  remember me
//
//  Created by Sierra 4 on 04/04/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
 
    @IBOutlet weak var submitbtn: UIButton!
    @IBOutlet weak var checkboxtblview: UITableView!
    var selectedItem :[Int] = []
    var selection : [String] = []

       var array :[String] = ["A","B" ,"C","D",
                               "E","F","G ","H",
                               "I","J","K","L",
                               "M","N","O","P",
                               "Q","R","S","T",
                               "U","V","W","X",
                               "Y","Z","ONE","TWO",
                               "THREE"]
    
        
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        override func viewWillAppear(_ animated: Bool) {
            checkboxtblview.reloadData()
        }
        func tickClicked(sender: UIButton!)
        {
            let value = sender.tag;
            
            if  selectedItem.contains(value)
            {
                selectedItem.remove(at: selectedItem.index(of: value) ?? 0)
                selection.remove(at: selection.index(of: array[sender.tag])!)
            }
            else
            {
                selectedItem.append(value)
                selection.append(array[value])
            }
            // checkedData.append(array[value])
            print("Selecetd Array \(selectedItem)")
            print(array[value])
            
        }
        @IBAction func btnSubmit(_ sender: UIButton)
        {
           
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "seguelink"
            {
                let showDatavc : ViewController2 = segue.destination as!  ViewController2
                showDatavc.data = selection
                
            }
            
        }
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
    }
    
    extension ViewController : UITableViewDelegate,UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            
            return array.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            guard let cell: TableViewCellfirst = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as?  TableViewCellfirst else{ return  TableViewCellfirst()}
            cell.lblinfo.text = array[indexPath.row]
            cell.checkbox.addTarget(self, action:#selector(ViewController.tickClicked(sender:)), for: .touchUpInside)
            cell.checkbox.tag = indexPath.row
            return cell
        }
        
        
}


