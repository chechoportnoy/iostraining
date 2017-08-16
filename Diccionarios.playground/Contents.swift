//: Playground - noun: a place where people can play

import UIKit

var dicCombinado:[Int:String] = [1:"Uno", 2:"Dos", 3:"Tres"]

var dicNumeros:[Int:Int] = [1:11, 2:22, 3:33]

var dicCadenas:[String:String] = ["primero":"Uno", "segundo":"Dos", "tercero":"Tres"]



var nombre:[String:String] = ["1":"Saul", "2":"Paul", "3":"Abraham", "4":"Paul", "5":"Abraham","6":"Alex", "7":"Adolfo", "8":"Karlo","9":"Sergio"]

nombre.count

nombre.updateValue("NO ES SAUL", forKey: "1")
nombre



//Ejemplos
var numeroPerros=2
var cadena1:String="Mi nombre es Sergio y tengo \(numeroPerros)"
var cadena2:String=" perros"

//concatenacion
var cadena3:String=cadena1+cadena2

//Arreglos

var arreglo:[String] = ["Uno", "Dos", "Tres"]

print(arreglo[1])
