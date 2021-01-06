import MapKit
import PlaygroundSupport
let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.500936, longitude: -0.124636), latitudinalMeters: 1000, longitudinalMeters: 1000)
PlaygroundPage.current.liveView = mapView
