//: A MapKit based Playground

import MapKit
import PlaygroundSupport
import UIKit


let infiniteLoopCoord = CLLocationCoordinate2DMake(37.331695, -122.0322854)

// Now let's create a MKMapView
let mapView = MKMapView(frame: CGRect(x:0, y:0, width:800, height:800))

// Define a region for our map view
var mapRegion = MKCoordinateRegion()

let mapRegionSpan = 0.02
mapRegion.center = infiniteLoopCoord
mapRegion.span.latitudeDelta = mapRegionSpan
mapRegion.span.longitudeDelta = mapRegionSpan

mapView.setRegion(mapRegion, animated: true)

// Create a map annotation
let annotation = MKPointAnnotation()
annotation.coordinate = infiniteLoopCoord
annotation.title = "Apple Inc."
annotation.subtitle = "1 Infinite Loop, Cupertino, California."
let mapLPRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleMapPress))
mapView.addAnnotation(annotation)
mapView.addGestureRecognizer(mapLPRecognizer)
// Add the created mapView to our Playground Live View
PlaygroundPage.current.liveView = mapView

let location = gestureRecognizer.location(in: mapView)
let coordinate : CLLocationCoordinate2D = mapView.convert(location,toCoordinateFrom: mapView)


