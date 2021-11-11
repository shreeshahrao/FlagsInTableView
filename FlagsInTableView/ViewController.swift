//
//  ViewController.swift
//  FlagsInTableView
//
//  Created by Shreesha on 11/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var countries = ["India" ,"England" , "Australia" , "Halland" , "Slovakia" , "SriLanka" , "America"]

    @IBOutlet weak var countryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        countryTableView.delegate = self
        
        //countryTableView.delegate = self
        countryTableView.dataSource = self
    }

}
extension ViewController: UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  100
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "cell") as! CountryTableViewCell
        cell.countryLabel.text = countries[indexPath.row]
        cell.countryImgView.image = UIImage(named: countries[indexPath.row])
        cell.countryImgView.layer.cornerRadius = 30
        return cell
    }
    
    
    
}

