//
//  ViewController.swift
//  Reservapp
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate  {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var parkView: UIView!
    /**MapView variables**/
    var globalRegion:MKCoordinateRegion!
    var zooooomMap = 0.019
    var names:[String]!
    var coordinates:[Any]!
    var currentAlamIndex: Int = 0
    var loadingLocations = true
    /**MapView**/
    override func viewDidLoad() {
        super.viewDidLoad()
        parkView.isHidden = true
        mapView.delegate = self
        
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(callbackLocations), userInfo: nil, repeats: loadingLocations)//ubicaciones
        
        let latDelta:CLLocationDegrees = zooooomMap
        let lonDelta:CLLocationDegrees = zooooomMap
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(21.8780455, -102.3129373)
        globalRegion = MKCoordinateRegionMake(location, span)
        names = ["San Marcos", "Villa Charrra"]
        coordinates = [
            [21.8780455, -102.3018993],
            [21.8695888, -102.3079263]
        ]
        currentAlamIndex = 0
        mapView.setRegion(globalRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //MARK: MKMapViewDelegate
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        _ = MKCoordinateRegion(center: self.mapView.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: zooooomMap, longitudeDelta: zooooomMap))
    }
    @objc func callbackLocations() {
        if currentAlamIndex > names.count - 1{
            currentAlamIndex = 0
        }
        let coordinate = coordinates[currentAlamIndex] as! [Double]
        let latitude: Double   = coordinate[0]
        let longitude: Double  = coordinate[1]
        let locationCoordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        var point = Annotation(coordinate: locationCoordinates)
        point.title = names[currentAlamIndex]
            var isExist = false
            for annotation in self.mapView.annotations{
                if annotation.coordinate.longitude == point.coordinate.longitude && annotation.coordinate.latitude == point.coordinate.latitude{
                    isExist = true
                    point = annotation as! Annotation
                }
            }
            if !isExist{self.mapView.addAnnotation(point)}
            self.currentAlamIndex += 1
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if !(annotation is Annotation){
            return nil
        }
        var annotationView = self.mapView.dequeueReusableAnnotationView(withIdentifier: "Pin")
        if annotationView == nil{
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "Pin")
            annotationView?.canShowCallout = true
        }else{
            annotationView?.annotation = annotation
        }
        // Right accessory view
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .green
        button.setTitle("Parkeame", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        annotationView?.rightCalloutAccessoryView = button
        return annotationView
    }
    @objc func buttonAction(sender: UIButton!) {
        parkView.isHidden = false
    }
    @IBAction func apartarAction(_ sender: Any) {
        parkView.isHidden = true
    }
}

