//
//  StatusViewController.swift
//  weightApp
//
//  Created by Estefania Guardado on 25.07.17.
//  Copyright © 2017 Estefania Guardado. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        presentInitialNavigationVC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentInitialNavigationVC() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let initialNavigationVC = storyboard.instantiateViewController(withIdentifier: "navigationInitial")
        self.present(initialNavigationVC, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
