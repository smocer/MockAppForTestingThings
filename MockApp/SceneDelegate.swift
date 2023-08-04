//
//  SceneDelegate.swift
//  MockApp
//
//  Created by Egor Butyrin on 07.06.2023.
//

import UIKit
import Darwin
import Target2
import TestLibWrapper
import FirebaseWrapper
//import FirebaseAnalytics

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        doMagic()
        
        window = UIWindow(windowScene: windowScene)
        let rootVC = MainViewController()
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }

    func doMagic() {
        PrinterClass.printSomeLines()
        let app = FirebaseApp.app()
        let opts = FirebaseOptions(contentsOfFile: "")
    }
}
