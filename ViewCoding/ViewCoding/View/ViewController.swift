//
// ViewController.swift
// ViewCoding
// 
// YouTube.com/channel/UC_05qBpgNMilR_OS4kcVUMQ
//
// Criado por PTBR Dev
//

import UIKit

class ViewController: UIViewController {
    
    // Variável computada de função anõnima: Usada quando, antes de inicializarmos a variável,
    // precisamos setar alguma propriedade do componente (UITableView)
    let tableView: UITableView = {
        let tableView = UITableView()
        // Quando a tableView for inicializada, ela já virá com uma cell registrada e
        // a propriedade .translatesAutoresizingMaskIntoConstraints como false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Clique aqui", for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var dataSource: TableViewDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        dataSource = .init(dados: ["Sao Paulo", "Brasilia", "Rio de Janeiro", "Cuiaba", "Joao Pessoa"])
        tableView.dataSource = dataSource
        
        // As ordens de chamada da .addSubview e das funções de setupConstraints são importantes,
        // já que só podemos setar as constraints de uma view quando ela for filha de outra view,
        // neste caso, da view da ViewController
        view.addSubview(tableView)
        view.addSubview(button)
        setupButtonConstraints()
        setupTableConstraints()
    }
    
    // Setar as constraints de uma view só é possível quando a propriedade
    // .translatesAutoresizingMaskIntoConstraints está false
    func setupButtonConstraints() {
        NSLayoutConstraint.activate([
            // A largura (width) do botão será igual a largura da view multiplicada por 0.7,
            // ou seja, o botão terá uma largura equivalente a 70% da largura da view
            button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // A parte inferior (bottom) do botão será igual a parte inferior da view,
            // recuando 60 pontos.
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
        ])
    }
    
    func setupTableConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -10)
        ])
    }
}
