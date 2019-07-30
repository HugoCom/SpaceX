//
//  FirstViewController.swift
//  SpaceX
//
//  Created by Hugo Combe on 30/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var capsules: [Capsule]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let url = URL(string: AppDelegate.init().APIBaseUrl + "capsules") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resonse, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([Capsule].self, from: data)
                self.capsules = json
                self.receiveCapsule()
            } catch {
                print("error:\(error)")
            }
        }.resume()
    }
    
    private func receiveCapsule() {
        if let capsules = self.capsules {
            for capsule in capsules {
                print(capsule)
                for mission in capsule.missions {
                    print(mission)
                }
            }
        }
    }
}

