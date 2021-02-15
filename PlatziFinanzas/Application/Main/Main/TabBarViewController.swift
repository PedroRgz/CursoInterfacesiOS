//
//  TabBarViewController.swift
//  PlatziFinanzas
//
//  Created by Pedro Rodríguez on 15/02/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //agregamos el boton personalizado
        customButton()
    }
    
    //El botón principal será personalizado
    func customButton() {
        //Necesita un frame donde se limitará el botón
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        var menuButtonFrame = menuButton.frame
        //posicionamos el botón con una altura en "y" respecto al TabBar
        menuButtonFrame.origin.y = tabBar.frame.origin.y - 32
        //en "x" es respecto al ancho de la pantalla, ya que todo ese ancho es ocupado por la tabBar
        menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
        //ahora asignamos esos valores al frame del botón
        menuButton.frame = menuButtonFrame
        //agregamos la imagen al boton y la condicion de "normal" -> así se mostrará de la misma forma en cualqueir estado de la app
        menuButton.setImage(UIImage(named: "PlusButton"), for: .normal)
        menuButton.backgroundColor = UIColor(named: "Green")
        menuButton.layer.cornerRadius = 8
        
        view.addSubview(menuButton)
        
        //la acción del boton, que necesita un método objectiveC
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
    }
    
    @objc private func menuButtonAction(sender: UIButton){
        selectedIndex = 2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
