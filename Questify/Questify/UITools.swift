
//

import Foundation

import UIKit

func initSwipeGestures(){
    
}

func changeView(ViewToLoadID: String, CurrentView: UIViewController) -> Void {

    
    print("Changed View to: " + ViewToLoadID)
    
    
    //let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: ViewToLoadID) as UIViewController
    
    //CurrentView.present(viewController, animated: false, completion: nil)
    CurrentView.performSegue(withIdentifier: ViewToLoadID, sender: CurrentView)
  }
