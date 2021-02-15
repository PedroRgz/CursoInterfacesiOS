//
//  OnBoardingContainerViewController.swift
//  PlatziFinanzas
//
//  Created by Pedro Rodríguez on 05/02/21.
//

import UIKit

class OnBoardingContainerViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
     Este método se ejecuta por defecto justamente antes de que se realice la transición de un ViewController a otro
     OnBoardingContainerViewController --> PageViewController
     El 'segue' representa la transición en sí y tiene 3 atributos: source, destination, identifier
     source -> desde donde se realiza
     destination -> el ViewController de destino
     identifier -> string que identifica a la transición
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //Se verifica que la transición ejecutada sea la deseada...
        guard segue.identifier == "openOnBoarding",
              let destination = segue.destination as? OnBoardingViewController else {
            return
        }
        //y si lo es, entonces se da el ViewController destino
        destination.pageControl = pageControl
    }

}
