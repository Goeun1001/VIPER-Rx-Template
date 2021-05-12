# VIPER-Rx Template
Xcode File Template for generating VIPER modules: View, Interactor, Presenter, and Router. 

Using RxSwift & RxCocoa.

Customized [Zafar Ivaev](https://github.com/zafarivaev)'s [VIPER-Template](https://github.com/zafarivaev/VIPER-Template)

# How To Install
1. Clone the repository
2. Navigate to Xcode Templates folder: ```~/Library/Developer/Xcode/Templates/```. If Templates folder doesn't exist, create it
3. Copy and paste the VIPER Module.xctemplate in Templates folder

# Use
1. Open Xcode
2. ```File -> New -> File``` or ```⌘ N```
3. Scroll down till you see ```VIPER-Rx Module``` template and choose it.
4. Set a name for your module. Examples: ```BeerList, SearchBeer, RandomBeer```

# Generated Code

Let's suppose we wanted to create the Auth module. Here's how it would look:

### Contract
```BeerListContract.swift```

```swift
import Foundation

protocol BeerListViewProtocol {
    var presenter: BeerListPresenterProtocol { get }
}

protocol BeerListPresenterProtocol {
    var interactor: BeerListInteractorProtocol { get }
    var router: BeerListRouterProtocol { get }
}

protocol BeerListInteractorProtocol {
    
}

protocol BeerListRouterProtocol {
    
}
```

### View
```BeerListViewController.swift```

```swift
import UIKit
import RxSwift
import RxCocoa

class BeerListViewController: UIViewController, BeerListViewProtocol {
    
    // MARK: - Properties
    let presenter: BeerListPresenterProtocol
    
    // MARK: - Initialization
    
    init(presenter: BeerListPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
```

### Interactor
```BeerListInteractor.swift```

```swift
import Foundation

class BeerListInteractor: BeerListInteractorProtocol {
  
}
```

### Presenter
```BeerListPresenter.swift```

```swift
import Foundation
import RxCocoa
import RxSwift

class BeerListPresenter: BeerListPresenterProtocol {

    // MARK: Properties
    private let interactor: BeerListInteractorProtocol
    private let router: BeerListProtocol
    
    init(interactor: BeerListInteractorProtocol,
         router: BeerListProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
}
```

### Router
```BeerListRouter.swift```

```swift
import Foundation
import UIKit

class BeerListRouter: BeerListRouterProtocol {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}

```