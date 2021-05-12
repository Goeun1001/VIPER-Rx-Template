//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import RxCocoa
import RxSwift

class ___VARIABLE_ModuleName___Presenter: ___VARIABLE_ModuleName___PresenterProtocol {

    // MARK: Properties
    let interactor: ___VARIABLE_ModuleName___InteractorProtocol
    let router: ___VARIABLE_ModuleName___RouterProtocol
    
    init(interactor: ___VARIABLE_ModuleName___InteractorProtocol,
         router: ___VARIABLE_ModuleName___RouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
}
