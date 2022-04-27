# TagsFlowLayout

This implementation is built using a `UICollectionView` and a custom flowLayout.

<a href="https://github.com/rastaman111/VerticalFlowLayout">
    <img src="https://img.shields.io/cocoapods/v/VerticalFlowLayout.svg?style=flat"  alt="cocoapods version">
</a>
<a href="https://github.com/Carthage/Carthage">
    <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"  alt="Carthage compatible">
</a>   

<a href="https://github.com/rastaman111/VerticalFlowLayout/blob/master/LICENSE">
    <img alt="GitHub" src="https://img.shields.io/github/license/rastaman111/VerticalFlowLayout.svg">
</a>

<a href="https://cocoapods.org/pods/VerticalCardSwiper">
    <img src="https://img.shields.io/cocoapods/p/VerticalCardSwiper.svg?style=flat?" alt="platform">
</a>

<a href="https://swift.org/blog/swift-5-released/">
    <img src="https://img.shields.io/badge/swift-5.0-brightgreen.svg" alt="swift5.0">
</a>

### Horizontal Alignment:

* `horizontalAlignment = .left`

<div> <img src="./Left.jpg" width="250"> </div>

* `horizontalAlignment = .right`

<div> <img src="./Right.jpg" width="250"> </div>

* `horizontalAlignment = .center`

<div> <img src="./Center.jpg" width="250"> </div>

### Inserting and Deleting tags

<div> <img src="./Replay_Insert_Remove.gif" alt="Replay_Insert_Remove" width="250"> </div>

# Table of contents

  * [Requirements](#requirements)
  * [Installation](#installation)
     - [CocoaPods](#cocoapods)
     - [Swift Package Manager](#swift-package-manager)
     - [Carthage](#carthage)
     - [Manually](#manually)
  * [Usage](#usage)
  * [License](#license)
  * [Donation](#donation)

## Requirements
* iOS 11.0+
* Swift 5

## Installation

### CocoaPods
Add Instructions to your Podfile:

```ruby
pod 'TagsFlowLayout'
```

Then, run the following command:

```bash
$ pod install
```

### Swift Package Manager
In Xcode, use File > Swift Packages > Add Package Dependency and use `https://github.com/rastaman111/TagsFlowLayout`.

### Carthage
To install with [Carthage](https://github.com/Carthage/Carthage), simply add the following line to your Podfile:
```ruby
github "rastaman111/TagsFlowLayout"
```

### Manually
If you prefer not to use any of dependency managers, you can integrate manually. Put `Sources/TagsFlowLayout` folder in your Xcode project. Make sure to enable `Copy items if needed` and `Create groups`.

## Usage
To use `TagsFlowLayout` inside your `UIViewController`:

```swift
import TagsFlowLayout

class ViewController: UICollectionViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tagsFlowLayout = TagsFlowLayout(alignment: .left ,minimumInteritemSpacing: 10, minimumLineSpacing: 10, sectionInset: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        collectionView.collectionViewLayout = tagsFlowLayout
        
        // register cell
        collectionView.register(nib: UINib(nibName: "ExampleCell", bundle: nil), forCellWithReuseIdentifier: "ExampleCell")
    }
    
   override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExampleCell", for: indexPath) as! ExampleCell
        
        cell.maxWidth = collectionView.bounds.width - 30

        return cell
    }
}
```
```swift
class TagCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tagLabel: UILabel!
    
    @IBOutlet private var maxWidthConstraint: NSLayoutConstraint! {
        didSet {
            maxWidthConstraint.isActive = false
        }
    }
    
    var maxWidth: CGFloat? = nil {
        didSet {
            guard let maxWidth = maxWidth else {
                return
            }
            maxWidthConstraint.isActive = true
            maxWidthConstraint.constant = maxWidth
        }
    }
}
```
## License
TagsFlowLayout is available under the MIT license. See the LICENSE file for more info.

## Donation
<a href="https://www.buymeacoffee.com/SoundBar" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
