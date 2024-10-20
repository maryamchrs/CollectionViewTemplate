//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_productName___ViewController: UIViewController {
    
    // MARK: - Object lifecycle
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("___VARIABLE_productName___ViewController - Initialization using coder Not Allowed.")
    }
    
    init() {
        super.init(nibName: ___VARIABLE_productName___ViewController.nibName, bundle: nil)
    }
    
    // MARK: - Deinit
    deinit {}
    
    // MARK: - CollectionView section type
    /*
     Add case as many as you need.
     */
    enum Section: Int, CaseIterable {
        case main
    }
    
    // MARK: - typealias
    typealias DataSource = UICollectionViewDiffableDataSource<Section, UUID>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, UUID>

    // MARK: - Properties
    // MARK: Public
    
    // MARK: Private
    private var dataSource: DataSource!
    private(set) var cellViewModel = [Section: [any DefaultCollectionViewModelProtocol]]()
    
    // MARK: - Outlets
    // TODO: - Add CollectionView outlet here.
    //@IBOutlet private(set) weak var collectionView: UICollectionView!
}

// MARK: - View Controller

// MARK: Life Cycle
extension ___VARIABLE_productName___ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        configureCollectionLayout()
        configureDataSource()
        applySnapshot()
    }
}

// MARK: - Methods
// MARK: Public
extension ___VARIABLE_productName___ViewController {}

// MARK: Private
private extension ___VARIABLE_productName___ViewController {
    func configureCollectionView() {
        /*
         Do NOT FORGET TO REGISTER YOUR NIBs
         */
        collectionView.registerNib(___VARIABLE_cellProductName___CollectionViewCell.self)
        collectionView.delegate = self
    }
    
    func configureCollectionLayout() {
        let layout = UICollectionViewCompositionalLayout { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            guard let sectionType = Section(rawValue: sectionIndex) else { return nil }
            switch sectionType {
                // Complete this part based on the layout that you wish for.
                // SAMPLE
                // let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                //                                       heightDimension: .fractionalHeight(1))
                // let item = NSCollectionLayoutItem(layoutSize: itemSize)
                // item.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
                // let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                //                                        heightDimension: .fractionalHeight(1/3))
                // let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                // let section = NSCollectionLayoutSection(group: group)
                // return section


 		case .main:
                // TODO: - Complete this part based on your situation
                return nil
            }
        }
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
    
    func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, UUID>(collectionView: collectionView) { [weak self]
            (
                collectionView: UICollectionView,
                indexPath: IndexPath,
                identifier: UUID
            ) -> UICollectionViewCell? in
            
            guard let self = self, let sectionType = Section(rawValue: indexPath.section) else {
                return UICollectionViewCell()
            }
            
            switch sectionType {
                // Complete this part based on the layout that you wish for.
                // SAMPLE
                // guard let memoriesViewModel = self.cellViewModel[sectionType] as? [MemoryCollectionViewModel],
                //     let memoryViewModel = memoriesViewModel.first(where: { $0.getDataModel().id == identifier })
                // else {
                //   return UICollectionViewCell()
                // }
                // let cell: MemoryCollectionViewCell = collectionView.dequeueReusableCell(for: indexPath)
                // cell.setViewModel(memoryViewModel)
                // return cell

		case .main:
                // TODO: - Complete this part based on your situation
                return UICollectionViewCell()
            }
        }
    }
    
    func applySnapshot(animatingDifferences: Bool = true) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, UUID>()
        snapshot.appendSections(Section.allCases)
        
        // TODO: CHANGE BASED ON YOUR SITUATION
        // SAMPLE
        // guard let memoriesViewModel = self.cellViewModel[.memories] as? [MemoryCollectionViewModel] else { return }
        // guard let placesViewModel = self.cellViewModel[.favoritePlaces] as? [LandscapeCollectionViewModel] else { return }
        
        // snapshot.appendItems(placesViewModel.map({$0.getDataModel()}).map({$0.id}), toSection: .favoritePlaces)
        // snapshot.appendItems(memoriesViewModel.map({$0.getDataModel()}).map({$0.id}), toSection: .memories)
        
        if #available(iOS 15, *) {
            dataSource.applySnapshotUsingReloadData(snapshot)
        } else {
            dataSource.apply(snapshot, animatingDifferences: true)
        }
    }
}

// MARK: - Actions
extension ___VARIABLE_productName___ViewController {}

// MARK: - UICollectionViewDelegate
extension ___VARIABLE_productName___ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {}
}
