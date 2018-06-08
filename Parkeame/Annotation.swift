import Foundation
import MapKit

class Annotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    var eta: String?
    var subtitle: String?
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}
