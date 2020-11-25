import Darwin
//@testable import class Fusee

//======================
// MARK: - Variables
//======================

var nbEtageS = 1.0
var catMoteurS = 0.0
var catAerodynamiqueS = 0.0
var caracFuseeTot = 0.0
var ptScience = 0


//======================
// MARK: - Orbites
//======================


func orbiteTerre(){
    newScreen()
    print("Voici les Fusée(s) en orbites : ")
//    var i:Int
//    for i in tabFusee {
//        var nameRocket = tabFuseePres[i]
//        var theRocket = tabFusee[nameRocket]
//        var localisation = theRocket?.getTOu()
//        if localisation! == "Orbite Terre" {
//            let nom = theRocket?.getNom()
//            print("Fusée \(i) : \(nom!)")
//        }
//    }
    espace()
}

func orbiteLune(){
    
}

func orbiteMars(){
    
}


var tabFusee = ["aze":Fusee(nom:"aze")]
var tabFuseePres = ["aze"]
newScreen()
while true {
    menuPrincipal()
}
