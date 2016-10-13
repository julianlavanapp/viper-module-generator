//
//  VIPERInRouter.swift
//  Lavanapp
//
//  Created by Julián Alonso Carballo on 6/10/16.
//  Copyright © 2016 com.paraiso. All rights reserved.
//

import UIKit
import Jalver

class VIPERRouter: BaseRouter, Router {

    let viewController: VIPERViewController
    let presenter: VIPERPresenter

    init(viewController: VIPERViewController, presenter: VIPERPresenter) {
        self.viewController = viewController
        self.presenter = presenter
        super.init()
        self.fill()
    }

    func fill() {
        super.fill(viewController: self.viewController)
        self.presenter.viewController = self.viewController
        self.presenter.navigationDelegate = self
    }

}

extension VIPERRouter: VIPERNavigationDelegate {

}
