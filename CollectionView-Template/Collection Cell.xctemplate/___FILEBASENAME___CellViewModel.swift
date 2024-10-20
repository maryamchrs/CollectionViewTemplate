//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_productName___CollectionCellDelegate: AnyObject {}

final class ___FILEBASENAMEASIDENTIFIER___: DefaultCollectionViewModelProtocol {
    
    var model: ___VARIABLE_productName___
    weak var delegate: ___VARIABLE_productName___CollectionCellDelegate?
    
    init(model: ___VARIABLE_productName___, delegate: AnyObject? = nil) {
        self.model = model
        self.delegate = delegate as? ___VARIABLE_productName___CollectionCellDelegate
    }
    
    func getDataModel() -> ___VARIABLE_productName___ {
        model
    }
}