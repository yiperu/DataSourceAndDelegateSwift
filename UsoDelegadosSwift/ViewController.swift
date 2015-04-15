//
//  ViewController.swift
//  UsoDelegadosSwift
//
//  Created by Henry AT on 4/14/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SumarDataSource, SumarDelegate {

      var numeros = [10,20]
      var classSuma = Sumar()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      

      classSuma.delegate = self
      classSuma.datasource = self
      classSuma.metodoSuma()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


// MARK: Definiendo Metodos de los Delegados
  
  func numerosASumar() -> Int {
    print("Cantidad: \(numeros.count)")
    return numeros.count
  }
  
  func numerosPorOrden(indice: Int) -> Int {
    return numeros[indice]
  }
  
  func pasarElResultado(resultado: Int) {
    print("El resultado es: \(resultado)")
  }
}

