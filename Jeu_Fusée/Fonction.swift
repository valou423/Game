//
//  Fonction.swift
//  Jeu_Fusee
//
//  Created by Valentin Chevaillier on 25/11/2020.
//

import Foundation

func newScreen() {
    print("\n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n")
}

func espace() {
    print("\n\n\n")
}

func enregistrer(){
    
}

func lancerFusee() {
    print("Donnez un nom à votre fusée")
    let nom1 = readLine()
    let newFusee = Fusee(nom:nom1!)
    
    newFusee.setNom(nom:nom1!)
    newFusee.setNbEtage(nbEtage:nbEtageS)
    newFusee.setCatAero(catAerodynamique:catAerodynamiqueS)
    newFusee.setCatMoteur(catMoteur:catMoteurS)
    
    tabFusee[nom1!] = newFusee
    tabFuseePres.append(nom1!)
    
    newScreen()
    print("🎉 Bravo votre fusée est en orbite 🎉")
    espace()
    if tabFuseePres[0] == "aze"{
        print("🎉🎉  Bravo vous venez de lancer votre première fusée  🎉🎉")
        ptScience += 70
        calcCatNewFusee()
        tabFuseePres.remove(at:0)
        espace()
    }
}

func calcCatNewFusee(){
    let multEtage = 2.0
    let multMoteur = 1.4
    let multAero = 1.2
    
    caracFuseeTot = multAero * catAerodynamiqueS + multEtage * nbEtageS + multMoteur * catMoteurS
}

func afficheFusee(nomFusee:String){
    let theRocket = tabFusee[nomFusee]
    if theRocket != nil{
        let nom = theRocket?.getNom()
        let nbEtage = theRocket?.getNbEtage()
        let catMoteur = theRocket?.getCatMoteur()
        let catAerodynamique = theRocket?.getCatAerodynamique()
        let coiffe = theRocket?.getCoiffe()
        let tOu = theRocket?.getTOu()
        let carburant = theRocket?.getCarburant()
        
        print("La fusee \(nom!) a les caractéristique suivante :"
        + "\nNombre d'étage : \(nbEtage!)"
        + "\nCatégorie des moteurs : \(catMoteur!)"
        + "\nCategorie aerodynamique : \(catAerodynamique!)"
        + "\nCoiffe : \(coiffe!)"
        + "\nCarburant : \(carburant!)"
        + "\nElle se trouve : \(tOu!)")
    }else{
        print("🛑  LA FUSEE N'EXISTE PAS  🛑")
    }
    espace()
}
