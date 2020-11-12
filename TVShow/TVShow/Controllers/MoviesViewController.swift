//
//  ViewController.swift
//  TVShow
//
//  Created by Jordi Milla on 11/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation
import UIKit
import Moya

class MoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let provider = MoyaProvider<TVShowAPI>()
    var data: [Movie]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTable()
        requestMovies()
    }
    
    func setTable() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    func requestMovies() {
        provider.request(.getMovies) { result in
            switch result {
            case .success(let response):
                print("success")
                let array = try! response.map([Movie].self)
                self.data = array
                self.tableView.reloadData()
            case .failure:
                print("Error")
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        let movie = data?[indexPath.row]
        cell?.configure(movie: movie)
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

