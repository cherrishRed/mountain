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
    var progressValue: Double = 0.0

    @IBOutlet weak var mountainMap: MKMapView!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressBarValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mountainMap.delegate = self
        setUpMapImage()
        progressBar.progress = 0
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 4)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        var annotationView = self.mountainMap.dequeueReusableAnnotationView(withIdentifier: "Custom")
      
        if annotationView == nil {
                    //없으면 하나 만들어 주시고
                    annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "Custom")
                    annotationView?.canShowCallout = true
            
            let miniButton = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
                       miniButton.titleLabel?.text = annotation.title ?? "이상한 값"
                       miniButton.setImage(UIImage(systemName: "flag.fill"), for: .normal)
                       miniButton.tintColor = #colorLiteral(red: 0.8456967473, green: 0.3694105148, blue: 0.2398990095, alpha: 1)
                       annotationView?.rightCalloutAccessoryView = miniButton
                miniButton.addTarget(self, action: #selector(touchUpFlagButton(_:)), for: .touchUpInside)
                miniButton.tag = 1
        }
      let filteredMountain = service.mountainsData.filter { $0.title == annotation.title }
      
      if filteredMountain[0].clear == true {
        annotationView?.image = UIImage(named: "mountainGreen")?.resize(newWidth: 20, newHeight: 20)
      } else {
        annotationView?.image = UIImage(named: "mountain")?.resize(newWidth: 20, newHeight: 20)
      }
        return annotationView
    }
  
  @objc func touchUpFlagButton(_ sender: UIButton) {
    let labelTitle = sender.titleLabel?.text ?? "NOPE"
    let filteredMountain = service.mountainsData.filter { $0.title == labelTitle }
    
    guard let index = service.mountainsData.firstIndex(of: filteredMountain[0]) else { return }
    let clear = service.mountainsData[index].clear
    
    service.mountainsData[index].clear.toggle()
    mountainMap.reloadInputViews()
    print("일단 되나 보자")
    print(labelTitle)
    
    if clear == false {
      progressValue += 0.01
    } else {
      progressValue -= 0.01
    }
    
    progressBarValueLabel.text = "\(Int(progressValue * 100))%"
    updateAnnotations(title: labelTitle)
    progressBar.setProgress(Float(progressValue), animated: true)
  }
  
  private func updateAnnotations(title: String){
    let filteredAnnotation = mountainMap.annotations.filter { annotation in
      let anotationTitle = annotation.title ?? ""
      return anotationTitle == title
    }
    
    let annotation = filteredAnnotation[0]
    mountainMap.removeAnnotation(filteredAnnotation[0])
    mountainMap.addAnnotation(annotation)
  }
  
  func setUpMapImage() {
    var marks: [MapMarker] = []
    marks = service.mountainsData.map { (mountain: Mountain) -> MapMarker in
      return MapMarker(title: mountain.title, subtitle: "" , coordinate: CLLocationCoordinate2D(latitude: mountain.latitude, longitude: mountain.longitude))
    }
    for m in marks {
      mountainMap.addAnnotation(m)
    }
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

class
  Annotation: MKPointAnnotation {
    var index = 0
}
