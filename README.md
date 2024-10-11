# CollectionViewTemplate
A file template that automates the setup of UICollectionView, including creating view controllers, collection view cells, and view models. This significantly reduces the repetitive work involved, streamlining the process and saving developers time.

## Summery
If you're still working with UIKit and haven’t transitioned to SwiftUI, it’s important to recognize a key aspect: by not utilizing collection views, your app might be missing out on one of UIKit’s most powerful tools for building dynamic, highly flexible interfaces.

Apple’s Definition of CollectionView:
A collection view manages an ordered set of content, such as the grid of photos in the Photos app, and presents it visually in a highly customizable way.

## How it works
First you should download the collectionView-template and then copy it to this path ~/Library/Developer/Xcode/Templates/File Templates.
**It is vitally important to restart Xcode so as use the template.**

## Step by step guideline
To use this file template you have to have some code in your project.
** Fisrt **
Add the following code whereever you want.
``` Swift
protocol NibLoadable: AnyObject {
    static var nib: UINib { get }
}

extension NibLoadable {
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
    }
}

extension NibLoadable where Self: UIView {
    static func loadFromNib() -> Self {
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? Self else {
            fatalError("The nib \(nib) expected its root view to be of type \(self)")
        }
        return view
    }
}

extension NibLoadable where Self: UIViewController {
    static var nibName: String {
        return String(describing: self)
    }

    static var bundle: Bundle {
        return Bundle(for: Self.self)
    }
}

```
** Second **
``` Swift
protocol DefaultCollectionViewModelProtocol {
    associatedtype Item: Hashable
    
    var model: Item { get }
    
    init(model: Item, delegate: AnyObject?)
    
    func getDataModel() -> Item
}
``` 

Now we can start by adding new file to your project and at this moment you can see there is a new template in the pop up.


