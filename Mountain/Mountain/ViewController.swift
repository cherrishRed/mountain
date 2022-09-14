//
//  ViewController.swift
//  Mountain
//
//  Created by RED, Hamo on 2022/09/14.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    let mark = MapMarker(title: "",
                         subtitle: "",
                         coordinate: CLLocationCoordinate2D(latitude: 37.55769, longitude: 126.92450))
  
    let service: Service = Service()
    lazy var currentMountain: Mountain = service.mountainsData[0]
  
    @IBOutlet weak var mountainMap: MKMapView!
    @IBOutlet weak var mountainImageView: UIImageView!
    @IBOutlet weak var mountainTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mountainMap.delegate = self
        setUpMapImage()
        setData()
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        var annotationView = self.mountainMap.dequeueReusableAnnotationView(withIdentifier: "Custom")
        
        if annotationView == nil {
                    //없으면 하나 만들어 주시고
                    annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "Custom")
                    annotationView?.canShowCallout = true
            
            let miniButton = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
                       miniButton.setImage(UIImage(systemName: "person"), for: .normal)
                       miniButton.tintColor = .blue
                       annotationView?.rightCalloutAccessoryView = miniButton
        }
        
        annotationView?.image = UIImage(named: "mountain")?.resize(newWidth: 20, newHeight: 20)
        return annotationView
    }
  
  func setUpMapImage() {
    var marks: [MapMarker] = []
    marks = service.mountainsData.map { (mountain: Mountain) -> MapMarker in
      return MapMarker(title: mountain.title, subtitle: "" , coordinate: CLLocationCoordinate2D(latitude: mountain.latitude, longitude: mountain.longitude))
    }
    for m in marks {
      mountainMap.addAnnotation(m)
    }
    
    print("정보개수 \(service.mountainsData.count)")
  }
  
    func setData() {
      mountainImageView.image = UIImage(systemName: "swift")?.resize(newWidth: 250, newHeight: 250)
//      mountainImageView.image = UIImage(named: currentMountain.imageName)?.resize(newWidth: 250, newHeight: 250)
      mountainTitle.text = currentMountain.title
    }

}

extension UIImage {
  func resize(newWidth: CGFloat, newHeight: CGFloat) -> UIImage {
        let size = CGSize(width: newWidth, height: newHeight)
        let render = UIGraphicsImageRenderer(size: size)
        let renderImage = render.image { context in
            self.draw(in: CGRect(origin: .zero, size: size))
        }
        return renderImage
    }
}
