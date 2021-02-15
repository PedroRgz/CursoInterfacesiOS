//
//  BudgetViewController.swift
//  PlatziFinanzas
//
//  Created by Pedro Rodríguez on 15/02/21.
//

import UIKit

class BudgetViewController: UIViewController {
    @IBOutlet weak var tableView:UITableView!
    //construimos el array de los botones del header y agregamos los 3 botones
    @IBOutlet var animatedButtons: [UIButton]!

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

        
        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    
    //agregamos la funcion para animar el Header y la unimos con los 3 botones
    @IBAction func animateHeader(sender:UIButton){
        
    }

}


extension BudgetViewController:UITableViewDelegate{
    
}

extension BudgetViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    
}
