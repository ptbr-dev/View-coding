//
// TableViewDataSource.swift
// ViewCoding
//
// YouTube.com/channel/UC_05qBpgNMilR_OS4kcVUMQ
//
// Criado por PTBR Dev
//

import Foundation
import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {
    
    let dados: [String]
    
    init(dados: [String]) {
        self.dados = dados
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dados[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
}
