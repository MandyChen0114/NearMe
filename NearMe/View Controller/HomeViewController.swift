//
//  HomeViewController.swift
//  NearMe
//
//  Created by Mandy Chen on 10/11/17.
//  Copyright © 2017 ycyteam. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchResultsUpdating {

    @IBOutlet weak var tableView: UITableView!
    var searchController: UISearchController!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        initSearchBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedCell", for: indexPath) as! FeedCell
        if indexPath.row == 0 {
            cell.cellView.backgroundColor = UIColor(red:0.96, green:0.47, blue:0.51, alpha:1.0)
            cell.feedImageView.isHidden = false
            cell.feedImageView.image = UIImage(named: "PostImage")
            cell.avatarView.layer.borderWidth = 0.5
            cell.avatarView.layer.borderColor = UIColor(red:0.96, green:0.47, blue:0.51, alpha:1.0).cgColor
        } else if indexPath.row == 1 {
            cell.cellView.backgroundColor = UIColor(red:0.96, green:0.82, blue:0.25, alpha:1.0)
            cell.feedImageView.isHidden = true
            cell.avatarView.layer.borderWidth = 0.5
            cell.avatarView.layer.borderColor = UIColor(red:0.96, green:0.82, blue:0.25, alpha:1.0).cgColor
        } else if indexPath.row == 2 {
            cell.cellView.backgroundColor = UIColor(red:0.54, green:0.77, blue:0.96, alpha:1.0)
            cell.feedImageView.isHidden = true
            cell.avatarView.layer.borderWidth = 0.5
            cell.avatarView.layer.borderColor = UIColor(red:0.54, green:0.77, blue:0.96, alpha:1.0).cgColor
        }
        return cell
    }

    func initSearchBar() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        
        searchController.dimsBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        
        searchController.searchBar.sizeToFit()
        view.addSubview(searchController.searchBar)
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        if let keywords = searchController.searchBar.text {
           
            tableView.reloadData()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
