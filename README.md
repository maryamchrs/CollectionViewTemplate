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

By right clicking and selecting New File you should see this pop up.
![Screenshot 2024-10-10 at 20 44 18](https://github.com/user-attachments/assets/f7978b01-427a-4dee-9a67-95df72b8d3d5)

For the sake of showing an example we select the `View Controller & cell`

Now you should see this pou up and you are supposed to choose one name for you UIViewController and one for Cell and its ViewModel. 
The reason that you have to choose 2 names is because most of the time the ViewController has the bigger name. For instance it is more likely to have ArticlesViewController and choose Article for your Cell, CellViewModel and Model.
![Screenshot 2024-10-11 at 12 50 14](https://github.com/user-attachments/assets/e0c94725-4a78-41ea-9915-b35ed4245583)

Now you will see these files have added to your project navigation:

<img width="234" alt="Screenshot 2024-10-11 at 12 50 52" src="https://github.com/user-attachments/assets/a3c84832-cb1c-4a73-b4b9-1dbea7cdc9cb">

At this moment you have your UIViewController and your disered CollectionViewCell and its ViewModel.

But pay attention: 
Next steps are required.

1) Add a UICollectionView in your ViewController whereever you wish for.
2) UnComment the collectionView outlet and asign it with the UICollectionView that you just added to your ViewController.
 ![Screenshot 2024-10-11 at 12 55 02](https://github.com/user-attachments/assets/d6714fc9-4ed7-4faa-a908-1d245ba2108e)
3) Asign View outlet to the UIViewController
![Screenshot 2024-10-11 at 12 52 30](https://github.com/user-attachments/assets/646166a8-dcb7-4feb-99d7-a2cc7d5936f4)
4) Change Model, Cell, CellViewModel based on what you want.
5) There are some comments in the ViewController that you have to change based on your situation.

<img width="1206" alt="Screenshot 2024-10-11 at 11 08 06" src="https://github.com/user-attachments/assets/a22e7732-9ed2-477a-84aa-966442f94284">
<img width="872" alt="Screenshot 2024-10-11 at 11 08 24" src="https://github.com/user-attachments/assets/ab0ef054-2b57-4347-9eb2-8e0075ddd3e8">
<img width="909" alt="Screenshot 2024-10-11 at 11 08 34" src="https://github.com/user-attachments/assets/00ece1a2-e895-4958-8b51-93e40f746506">

and done.

