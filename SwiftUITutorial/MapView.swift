//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by Franco on 01/07/2021.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        
        MKMapView(frame: .zero)
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let coordinates = CLLocationCoordinate2D (latitude: -33.15200, longitude: -60.50489)
        
        let span = MKCoordinateSpan (latitudeDelta: 1, longitudeDelta: 1)
        
        let region = MKCoordinateRegion(center: coordinates, span: span)
        
        uiView.setRegion(region, animated: true)
        
    }
    
        
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
