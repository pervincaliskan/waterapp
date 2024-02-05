//
//  BaseViewModel.swift
//  waterapp
//
//  Created by Alperen Polat Gezgin on 5.02.2024.
//

import Foundation

public protocol BaseViewModelProtocol: AnyObject {
    init(_ className: String)
    init()
    var viewControllerName: String? { get }
}

class BaseViewModel: BaseViewModelProtocol {
    var viewControllerName: String?
    
    required init(_ viewControllerName: String){
        self.viewControllerName = viewControllerName
    }
    
    required init(){
    }
}

