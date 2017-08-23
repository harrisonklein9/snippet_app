//
//  ViewController.swift
//  snippet_app
//
//  Created by Harrison Klein on 8/19/17.
//  Copyright © 2017 Harrison Klein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data: [SnippetData] = [SnippetData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func createNewSnippet(_ sender: Any) {
        
        let alert = UIAlertController(title: "Select Snippet Type", message: nil, preferredStyle: .actionSheet)
        let textAction = UIAlertAction(title: "Text", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.createNewTextSnippet()
        }
        let photoAction = UIAlertAction(title: "Photo", style: .default) {
            (alert: UIAlertAction!) -> Void in
            self.data.append(SnippetData(snippetType: .photo))
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(textAction)
        alert.addAction(photoAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
        
        print("ive made it")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createNewTextSnippet () {
        guard let textEntryVC = storyboard?.instantiateViewController(withIdentifier: "textSnippetEntry") as? TextSnippetEntryViewController
        else {
            print("TextSnippetEntryViewController could not be instantiated from storyboard")
            return
        }
        textEntryVC.modalTransitionStyle = .coverVertical
        present(textEntryVC, animated: true, completion: nil)
    }

}
