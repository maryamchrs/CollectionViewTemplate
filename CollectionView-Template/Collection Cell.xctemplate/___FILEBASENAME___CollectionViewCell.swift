//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_productName___CollectionViewCell: UICollectionViewCell {
    
    //MARK: - Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    //MARK: - Properties
    var viewModel: ___VARIABLE_productName___CollectionViewModel?
}

//MARK: - Methods
//MARK: Public
extension ___VARIABLE_productName___CollectionViewCell {
    func configCell(_ viewModel: ___VARIABLE_productName___CollectionViewModel) {
        self.viewModel = viewModel
    }
}

//MARK: Public
private extension ___VARIABLE_productName___CollectionViewCell {
    func setupView() {}
}
