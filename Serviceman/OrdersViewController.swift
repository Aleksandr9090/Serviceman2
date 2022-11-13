//
//  OrdersViewController.swift
//  Serviceman
//
//  Created by Aleksandr on 12.11.2022.
//

import UIKit

class OrdersViewController: UITableViewController {
    var orders: [Order] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        orders = Order.getOrders()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        orders.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let order = orders[indexPath.row]
        content.text = order.address
        content.secondaryText = order.phone
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Table View Data Source
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let order = orders[indexPath.row]
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            StorageManager.shared.delete(order)
            tableView.reloadRows(at: [indexPath], with: .automatic)
            
        }
        
        let doneAction = UIContextualAction(style: .normal, title: "Complete") { _, _, isDone in
            StorageManager.shared.done(order)
            tableView.reloadRows(at: [indexPath], with: .automatic)
            isDone(true)
        }
        
        doneAction.backgroundColor = .green
        
        
        return UISwipeActionsConfiguration(actions: [doneAction, deleteAction])
    }
    
    
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let orderVC = segue.destination as? OrderViewController else { return }
        let order = orders[indexPath.row]
        orderVC.order = order
        
    }


    @IBAction func AddButtonPressed(_ sender: UIBarButtonItem) {
    }
    
}
