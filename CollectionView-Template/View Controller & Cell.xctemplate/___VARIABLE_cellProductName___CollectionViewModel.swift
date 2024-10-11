//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_cellProductName___CollectionCellDelegate: AnyObject {}

final class ___VARIABLE_cellProductName___CollectionViewModel: DefaultCollectionViewModelProtocol {
    
    var model: ___VARIABLE_cellProductName___
    weak var delegate: ___VARIABLE_cellProductName___CollectionCellDelegate?
    
    init(model: ___VARIABLE_cellProductName___, delegate: AnyObject? = nil) {
        self.model = model
        self.delegate = delegate as? ___VARIABLE_cellProductName___CollectionCellDelegate
    }
    
    func getDataModel() -> ___VARIABLE_cellProductName___ {
        model
    }
}