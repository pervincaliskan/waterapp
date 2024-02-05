//
//  BaseViewController.swift
//  waterapp
//
//  Created by Alperen Polat Gezgin on 5.02.2024.
//

import UIKit

protocol BaseViewControllerProtocol {
    associatedtype T
    var viewModel: T! { get set }
}

class BaseViewController<T>: UIViewController, BaseViewControllerProtocol where T: BaseViewModelProtocol {
    
    var viewControllerName: String {
        return NSStringFromClass(type(of: self))
    }
    var viewModel: T!

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.viewModel = T.init(viewControllerName)
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
        self.viewModel = T.init(viewControllerName)
    }
    
}

