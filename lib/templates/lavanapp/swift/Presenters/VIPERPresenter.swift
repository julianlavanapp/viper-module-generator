//
//  VIPERPresenter.swift
//  Lavanapp
//
//  Created by Julián Alonso Carballo on 6/10/16.
//  Copyright © 2016 com.paraiso. All rights reserved.
//

import UIKit

protocol VIPERNavigationDelegate: NavigationDelegate {

}

class VIPERPresenter: BasePresenter<VIPERRouter>, Presenter {

    var viewController: VIPERViewController! {
        didSet {
            self.viewController.uidelegate = self
        }
    }

}

extension VIPERPresenter: VIPERUIDelegate {

}
