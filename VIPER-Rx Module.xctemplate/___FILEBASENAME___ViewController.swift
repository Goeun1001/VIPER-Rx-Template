//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import RxSwift
import RxCocoa

class ___VARIABLE_ModuleName___ViewController: UIViewController, ___VARIABLE_ModuleName___ViewProtocol {
    
    // MARK: - Properties
    let presenter: ___VARIABLE_ModuleName___PresenterProtocol
    
    // MARK: - Initialization
    
    init(presenter: ___VARIABLE_ModuleName___PresenterProtocol) {
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
