//
//  Landmark.swift
//  Landmarks
//
//  Created by Ayana Kudo on 2023/10/20.
//

import Foundation
import SwiftUI
import CoreLocation

// SwiftUIのListにはidを振る必要があるので、idのプロパティを持たせた構造体をIdentifiableに準拠させる
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
