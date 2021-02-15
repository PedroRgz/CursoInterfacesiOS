//
//  TransactionsViewController.swift
//  PlatziFinanzas
//
//  Created by Pedro Rodríguez on 15/02/21.
//

import UIKit

class TransactionsViewController: UIViewController {
    //Para crear una tabla, se tiene que crear una extensión, para el delegado y el datasource
    
    @IBOutlet weak var tableView:UITableView!
    
    //creamos el emptystate
    fileprivate(set) lazy var emptyStateView:UIView = {
        guard let view = Bundle.main.loadNibNamed("emptyState", owner: nil, options: [:])?.first as? UIView else{
            return UIView()
        }
        return view
    }()

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
        
        //agregamos el diseño de la celda
        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
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

extension TransactionsViewController:UITableViewDelegate{
    
}

extension TransactionsViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        tableView.backgroundView = count == 0 ? emptyStateView : nil
        tableView.separatorStyle = count == 0 ? .none : .singleLine
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    
}
