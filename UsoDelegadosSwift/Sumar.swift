//
//  Sumar.swift
//  UsoDelegadosSwift
//
//  Created by Henry AT on 4/14/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import Foundation

@objc protocol SumarDataSource{
    func numerosASumar()->Int
    func numerosPorOrden(indice:Int)->Int
}

@objc protocol SumarDelegate{
    func pasarElResultado(resultado:Int)
}



class Sumar {
    weak var datasource: SumarDataSource?
    weak var delegate: SumarDelegate?
    var sumandos: Int?
    var resultado: Int?
    
    func metodoSuma() {
      
      sumandos = datasource?.numerosASumar()
      resultado = 0;
      
      for var index = 0; index < sumandos; index++ {
        resultado! = resultado! + datasource!.numerosPorOrden(index)
      }
        delegate!.pasarElResultado(resultado!)
    }
}