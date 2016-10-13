//
//  VIPERConifigurator.swift
//  Lavanapp
//
//  Created by Julián Alonso Carballo on 6/10/16.
//  Copyright © 2016 com.paraiso. All rights reserved.
//

import UIKit
import Jalver

//MARK: - Router
final class VIPERRouterConfigurator: Configurator {

    func configure() -> VIPERRouter {
        let viewController = Jalver.resolve(VIPERViewControllerConfigurator.self)
        let presenter = Jalver.resolve(VIPERPresenterConfigurator.self)

        let configured = VIPERRouter(viewController: viewController, presenter: presenter)
        return configured
    }

}

//MARK: - Presenter
final class VIPERPresenterConfigurator: Configurator {

    func configure() -> VIPERPresenter {
        let configured = VIPERPresenter()
        return configured
    }

}

//MARK: - ViewController
final class VIPERViewControllerConfigurator: Configurator {

    func configure() -> VIPERViewController {
        let configured = VIPERViewController()
        return configured
    }
}
