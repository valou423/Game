//
//  Science.swift
//  Jeu_Fusée
//
//  Created by Valentin Chevaillier on 25/11/2020.
//

import Foundation


func tableauScience(){
    newScreen()
    print("\n\n\nVoici votre tableau de science : "
        + "\nNombre d'étage maximum : \(nbEtageS)"
        + "\nCatégorie des moteur de la fusée : \(catMoteurS)"
        + "\nCatégorie de l'aerodynamisme de la fusée : \(catAerodynamiqueS)"
        + "\nNombre de point de science : \(ptScience)")
    espace()
    menuScience()
}

func gestionScience(){
    
    let prixEtage1 = 200
    let prixEtage2 = 650
    let prixEtage3 = 2000
    
    let prixMoteur1 = 40
    let prixMoteur2 = 120
    let prixMoteur3 = 360
    
    let prixAero1 = 25
    let prixAero2 = 105
    let prixAero3 = 400
    
    var prix1 = 0
    var prix2 = 0
    var prix3 = 0
    
    switch catMoteurS{
    case 0.0:
        prix1 = prixMoteur1
    case 1.0:
        prix1 = prixMoteur2
    case 2.0:
        prix1 = prixMoteur3
    default:
        print("Error")
    }
    
    switch catAerodynamiqueS{
    case 0.0:
        prix2 = prixAero1
    case 1.0:
        prix2 = prixAero2
    case 2.0:
        prix2 = prixAero3
    default:
        print("Error")
    }
    
    switch nbEtageS{
    case 1.0:
        prix3 = prixEtage1
    case 2.0:
        prix3 = prixEtage2
    case 3.0:
        prix3 = prixEtage3
    default:
        print("Error")
    }
    
    newScreen()
    print("Vos points de science : \(ptScience)")
    print("Que voulez vous augmenter ?"
        + "\n1. Le nombre d'étage maximum : \(prix3) points de sciences"
        + "\n2. La catégorie des moteurs de la fusée \(prix1) points de science"
        + "\n3. L'aerodynamisme \(prix2) points de science"
        + "\n4. Retour")
    
    // On récupère la réponse de l'utilisateur
    if let choice = readLine() {
        switch choice {
        case "1":
            switch nbEtageS {
            case 0:
                if ptScience >= prixEtage1 {
                    ptScience = ptScience - prixEtage1
                    nbEtageS = 1.0
                    print("Le nombre d'étage de votre fusée est passé à 1")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                    espace()
                }
            case 1:
                if ptScience >= prixEtage2 {
                    ptScience = ptScience - prixEtage2
                    nbEtageS = 2.0
                    print("Le nombre d'étage de votre fusée est passé à 2")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                    espace()
                }
            case 2:
                if ptScience >= prixEtage3 {
                    ptScience = ptScience - prixEtage3
                    nbEtageS = 3.0
                    print("Le nombre d'étage de votre fusée est passé à 3")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                    espace()
                }
            default:
                print("🛑  Je n'est pas compris  🛑")
            }
        case "2":
            switch catMoteurS {
            case 0:
                if ptScience >= prixMoteur1 {
                    ptScience = ptScience - prixMoteur1
                    catMoteurS = 1.0
                    print("Vos moteur son passé au niveau 1")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                }
            case 1:
                if ptScience >= prixMoteur2 {
                    ptScience = ptScience - prixMoteur2
                    catMoteurS = 2.0
                    print("Vos moteur son passé au niveau 2")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                }
            case 2:
                if ptScience >= prixMoteur3 {
                    ptScience = ptScience - prixMoteur3
                    catMoteurS = 3.0
                    print("Vos moteur son passé au niveau 3")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                }
            default:
                print("Je n'est pas compris.")
            }
        case "3":
            switch catAerodynamiqueS {
            case 0:
                if ptScience >= prixAero1 {
                    ptScience = ptScience - prixAero1
                    catAerodynamiqueS = 1.0
                    print("Votre Aérodynamisme est passé au niveau 1")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                }
            case 1:
                if ptScience >= prixAero2 {
                    ptScience = ptScience - prixAero2
                    catAerodynamiqueS = 2.0
                    print("Votre Aérodynamisme est passé au niveau 2")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                }
            case 2:
                if ptScience >= prixAero3 {
                    ptScience = ptScience - prixAero3
                    catAerodynamiqueS = 3.0
                    print("Votre Aérodynamisme est passé au niveau 3")
                }
                else{
                    print("\n🛑  Vous n'avez pas assez de point de science  🛑")
                }
            default:
                print("Je n'est pas compris.")
            }
        case "4":
            menuPrincipal()
        default:
            print("Je ne comprends pas")
            gestionScience()
        }
    }
}
