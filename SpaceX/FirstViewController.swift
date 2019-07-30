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
    var cores: [Core]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        apiCall()
    }
    
    fileprivate func apiCall() {
        guard let urlCapsule = URL(string: AppDelegate.init().APIBaseUrl + "capsules") else { return }
        guard let urlCore = URL(string: AppDelegate.init().APIBaseUrl + "cores") else { return }

        let taskCapsule = URLSession.shared.dataTask(with: urlCapsule) { (data, resonse, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([Capsule].self, from: data)
                self.capsules = json
                self.receiveCapsule()
            } catch {
                print("error:\(error)")
            }
        }
        
        let taskCore = URLSession.shared.dataTask(with: urlCore) { (data, resonse, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([Core].self, from: data)
                self.cores = json
                self.receiveCore()
            } catch {
                print("error:\(error)")
            }
        }
        
        taskCapsule.resume()
        taskCore.resume()
    }
}

extension FirstViewController {
    private func receiveCapsule() {
        if let capsules = self.capsules {
            print("Capsules printing")
            for capsule in capsules {
                print(capsule)
                if let missions = capsule.missions {
                    for mission in missions  {
                        print(mission)
                    }
                }
            }
        }
    }
    
    private func receiveCore() {
        if let cores = self.cores {
            print("Cores printing")
            for core in cores {
                print(core)
                if let missions = core.missions {
                    for mission in missions  {
                        print(mission)
                    }
                }
            }
        }
    }
}
