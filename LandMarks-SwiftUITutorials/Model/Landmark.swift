//
//  Landmark.swift
//  LandMarks-SwiftUITutorials
//
//  Created by 서동운 on 1/30/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordicates: Coordinates
    var locationCoornate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordicates.latitude,
            longitude: coordicates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
