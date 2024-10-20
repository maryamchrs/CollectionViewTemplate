//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: UICollectionViewCell {
    
    //MARK: - Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    //MARK: - Properties
    var viewModel: ___VARIABLE_productName___CellViewModel?
}

//MARK: - Methods
//MARK: Public
extension ___FILEBASENAMEASIDENTIFIER___ {
    func configCell(_ viewModel: ___VARIABLE_productName___CellViewModel) {
        self.viewModel = viewModel
    }
}

//MARK: Public
private extension ___FILEBASENAMEASIDENTIFIER___ {
    func setupView() {}
}
