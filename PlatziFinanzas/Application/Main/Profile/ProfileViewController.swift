//
//  ProfileViewController.swift
//  PlatziFinanzas
//
//  Created by Pedro Rodríguez on 15/02/21.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //---------SOLUCIÓN DE ERRORE PARA NAVIGATIONBAR EN IOS 13+.-------------------
        if #available(iOS 13.0, *) {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = UIColor.init(named: "Green")
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        }
        /*
         -Realizo un if para comprobar si la version de iOS es la 13
         -Luego genero una instancia de la clase UINavigationBarAppearance()
         -Con ese objeto declaro que el fondo sea opaco
         -Agrego el color blanco al título en sus dos versiones _(large y normal) _
         -Aplico el color que definimos conUIColor.init(named: "GreenColor") “GreenColor” es
         el nombre delset que creamos en el curso
         -Y aqui lo mas importante a nuestro navigationController mediante la propiedad
         standardAppearance y scrollEdgeAppearance le asignamos el objeto que recien
         creamos y configuramos
         */
        //-----------------------------------------------------------------------------
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
