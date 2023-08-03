//
//  ViewController.swift
//  MockApp
//
//  Created by Egor Butyrin on 07.06.2023.
//

import UIKit
import SwiftUI
import Target2

extension UIHostingController: HasRootView {
    var rootViewErased: any View {
        rootView
    }
}

protocol HasRootView {
    var rootViewErased: any View { get }
}

class MainViewController: UITableViewController {

    let dataSource = (0...99999).map { $0 }
    let label = UILabel(frame: CGRect(x: 40, y: 40, width: 50, height: 50))

    var vcName = ""

    private let childVC = Target2.TrashView.uikitView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        label.backgroundColor = .green
        (UIApplication.shared.connectedScenes.first as! UIWindowScene).windows.first!.addSubview(label)
        label.layer.zPosition = 99999
    }

    override func viewDidLayoutSubviews() {
        print("🤬", #function)
    }

    override func viewWillLayoutSubviews() {
        print("🤬", #function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("🤬", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("🤬", #function)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = "\(dataSource[indexPath.row])"
//        doHeavyCalculations()
        return cell
    }
}

class AnyHostingController {
    init(host: UIHostingController<AnyView>) {

    }
}

func doHeavyCalculations() {
    for _ in 0...10000 {
        _ = pow(5555, 99999)
    }
}


private extension UIApplication {
    var topmostViewController: UIViewController? {
        let root = (connectedScenes.first { $0 is UIWindowScene } as? UIWindowScene)?
            .windows
            .first { $0.isKeyWindow }?
            .rootViewController
        guard let root else {
            return nil
        }

        return topViewController(controller: root)
    }
}

private func topViewController(controller: UIViewController) -> UIViewController {
    if let navigationController = controller as? UINavigationController,
       let visibleViewController = navigationController.visibleViewController {
        return topViewController(controller: visibleViewController)
    }
    if let tabController = controller as? UITabBarController,
       let selected = tabController.selectedViewController {
        return topViewController(controller: selected)
    }
    if let presented = controller.presentedViewController {
        return topViewController(controller: presented)
    }
    return controller
}
