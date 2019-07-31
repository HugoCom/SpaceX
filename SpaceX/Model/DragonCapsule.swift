//
//  DragonCapsule.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public struct DragonCapsule: Codable {
    let id: String //DragonCapsule id
    let name: String //DragonCapsule name
    let type: String //DragonCapsule type
    let active: Bool //if DragonCapsule is active
    let crew_capacity: Int //Crew capacity of DragonCapsule
    let sidewall_angle_deg: Int //Sidewall angle in degree of DragonCapsule
    let orbit_duration_yr: Int //Orbit duration in year of DragonCapsule
    let dry_mass_kg: Int //Dry mass in kg of DragonCapsule
    let dry_mass_lb: Int //Dry mass in lb of DragonCapsule
    let first_flight: String //First flight of DragonCapsule
    let heat_shield: HeatShield //HeatShield of DragonCapsule
    let thrusters: [Thruster] //Thrusters of DragonCapsule
    let launch_payload_mass: Mass //Launch payload mass of DragonCapsule
    let launch_payload_vol: Volume //Launch payload volume of DragonCapsule
    let return_payload_mass: Mass //Return payload mass of DragonCapsule
    let return_payload_vol: Volume //Return payload volume of DragonCapsule
    let pressurized_capsule: PressurizedCapsule //Pressurized capsule of DragonCapsule
    let trunk: Trunk //Trunk of DragonCapsule
    let height_w_trunk: Length //Height of DragonCapsule
    let diameter: Length //Diamater of DragonCapsule
    let flickr_images: [String] //Flick images of DragonCapsule
    let wikipedia: String //Wikipedia link of DragonCapsule
    let description: String //Description of DragonCapsule
}

extension DragonCapsule {
    public func toString() -> String {
        return "DragonCapsule --> ID \(id), name \(name), type \(type), \(thrusters), \(trunk), height with trunk \(height_w_trunk), wikipedia link \(wikipedia)"
    }
}
