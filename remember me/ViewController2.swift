//
//  ViewController2.swift
//  remember me
//
//  Created by Sierra 4 on 04/04/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var data : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnBack(_ sender: UIButton)
    {
        _ = navigationController?.popViewController(animated: true)
    }
    
    
}
extension ViewController2 : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell: TableViewCellsecond = tableView.dequeueReusableCell(withIdentifier: "tablecell2", for: indexPath) as?  TableViewCellsecond else{ return  TableViewCellsecond()}
        cell.lblsegueinfo.text = data[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        
    }
    
}



