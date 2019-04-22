//
//  SearchEventViewController.swift
//  eventapp
//
//  Created by Gabriela Resende on 22/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//

import UIKit
extension SearchEventViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}

class SearchEventViewController: UIViewController {
    var filteredEvents = [Event]()
    let searchController = UISearchController(searchResultsController: nil)
   
    let events = Service.allEvents()
   
    // MARK: - Private instance methods
    
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredEvents = events.filter({( event : Event) -> Bool in
            return event.title.lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
    }
    
    @IBOutlet weak var hoje: UIButton!  //qdo selecionar mudar de cor
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Buscar Eventos"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        // Do any additional setup after loading the view.
    }
    

    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filteredEvents.count
        }
        
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let event: Event
        if isFiltering() {
            event = filteredEvents[indexPath.row]
        } else {
            event = events[indexPath.row]
        }
        cell.textLabel!.text = event.title
       // cell.detailTextLabel!.text = event.image
        return cell
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
