//
// SceneDelegate.swift
// ViewCoding
// 
// YouTube.com/channel/UC_05qBpgNMilR_OS4kcVUMQ
//
// Criado por PTBR Dev
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Como as referências para a Main.storyboard foram removidas,
        // precisamos setar qual será a viewController inicial.
        guard let scene = (scene as? UIWindowScene) else { return }
        
        // Uma UIWindow é um plano de fundo da interface de um app, aqui,
        // precisaremos iniciá-la manualmente e configurar qual será sua view raiz/inicial (root).
        window = .init(windowScene: scene)
        // Poderíamos passar a ViewController diretamente, mas o uso de uma
        // NavigationController é mais comum
        let navController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = navController
        // window?.rootViewController = ViewController()
    }
}
