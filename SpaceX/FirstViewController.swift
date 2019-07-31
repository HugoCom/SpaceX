//
//  FirstViewController.swift
//  SpaceX
//
//  Created by Hugo Combe on 30/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var callDone = 0
    var numberOfCall = 3
    var capsules: [Capsule]?
    var cores: [Core]?
    var dragonCapsules: [DragonCapsule]?
    var histories: [History]?

    @IBOutlet weak var waitingProgress: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        waitingProgress.hidesWhenStopped = true

        apiCall()
    }
    
    fileprivate func apiCall() {
        waitingProgress.startAnimating()
        guard let urlCapsule = URL(string: AppDelegate.init().APIBaseUrl + "capsules") else { return }
        guard let urlCore = URL(string: AppDelegate.init().APIBaseUrl + "cores") else { return }
        guard let urlDragonCapsule = URL(string: AppDelegate.init().APIBaseUrl + "dragons") else { return }
        guard let urlHistory = URL(string: AppDelegate.init().APIBaseUrl + "history") else { return }

        let taskCapsule = URLSession.shared.dataTask(with: urlCapsule) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([Capsule].self, from: data)
                self.capsules = json
                self.isCallDone()
                self.receiveCapsules()
            } catch {
                print("error:\(error)")
            }
        }
        
        let taskCore = URLSession.shared.dataTask(with: urlCore) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([Core].self, from: data)
                self.cores = json
                self.isCallDone()
                self.receiveCores()
            } catch {
                print("error:\(error)")
            }
        }
        
        let taskDragonCapsule = URLSession.shared.dataTask(with: urlDragonCapsule) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([DragonCapsule].self, from: data)
                self.dragonCapsules = json
                self.isCallDone()
                self.receiveDragonCapsules()
            } catch {
                print("error:\(error)")
            }
        }
        
        let taskHistory = URLSession.shared.dataTask(with: urlHistory) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode([History].self, from: data)
                self.histories = json
                self.isCallDone()
                self.receiveHistories()
            } catch {
                print("error:\(error)")
            }
        }
        
        taskCapsule.resume()
        taskCore.resume()
        taskDragonCapsule.resume()
        taskHistory.resume()
    }
}

extension FirstViewController {
    private func receiveCapsules() {
        /*if let capsules = self.capsules {
            print("Capsules printing")
            for capsule in capsules {
                print(capsule)
                for mission in capsule.missions  {
                    print(mission)
                }
            }
        }*/
    }
    
    private func receiveCores() {
        /*if let cores = self.cores {
            print("Cores printing")
            for core in cores {
                print(core)
                for mission in core.missions  {
                    print(mission)
                }
            }
        }*/
    }
    
    private func receiveDragonCapsules() {
        /*if let dragonCapsules = self.dragonCapsules {
            print("DragonCapsule printing")
            for dragon in dragonCapsules {
                print(dragon.toString())
            }
         }*/
    }
    
    private func receiveHistories() {
        /*if let histories = self.histories {
            print("Histories printing")
            for history in histories {
                print(history)
            }
         }*/
    }
    
    private func isCallDone() {
        self.callDone += 1
        if self.callDone == self.numberOfCall {
            DispatchQueue.main.async {
                self.waitingProgress.stopAnimating()
            }
        }
    }
}
