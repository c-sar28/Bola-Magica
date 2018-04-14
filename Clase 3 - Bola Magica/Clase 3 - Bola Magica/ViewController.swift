//
//  ViewController.swift
//  Clase 3 - Bola Magica
//
//  Created by César Elías Segura on 14/4/18.
//  Copyright © 2018 César Elías Segura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var intCicloContador: UInt32 = 5
    let strNombreImagen : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var valorBola : Int = 1
    @IBOutlet weak var imgBola: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generarImagen(){
        print("--------")
        for i in 1 ... intCicloContador{
            valorBola = Int(arc4random_uniform(intCicloContador))
            imgBola.image = UIImage(named: strNombreImagen[valorBola])
            print(strNombreImagen[valorBola])
        }
    }
    
    @IBAction func Respuesta(_ sender: UIButton) {
    //Option + control + click, opción Action
        generarImagen()
    }
    
}//Fin de clase

