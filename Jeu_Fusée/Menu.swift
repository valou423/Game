//
//  Menu.swift
//  Jeu_Fusée
//
//  Created by Valentin Chevaillier on 25/11/2020.
//

import Foundation


func menuOrbite(){
    print("Quelle orbite voulez vous voir ?"
        + "\n1. 🌍 Terre"
        + "\n2. 🌙 Lune"
        + "\n3. 🪐 Mars")

    // On récupère la réponse de l'utilisateur
    if let choice = readLine() {
        switch choice {
        case "1":
            orbiteTerre()
        case "2":
            orbiteLune()
        case "3":
            orbiteMars()
        default:
            print("Je ne comprends pas")
        }
    }
}

func menuScience(){
    print("Que voulez vous faire ?"
        + "\n1. Voir mon tableau de science"
        + "\n2. Augmenter une science"
        + "\n3. Retour au menu principal")

    // On récupère la réponse de l'utilisateur
    if let choice = readLine() {
        switch choice {
        case "1":
            tableauScience()
        case "2":
            gestionScience()
        case "3":
            menuPrincipal()
        default:
            print("Je ne comprends pas")
        }
    }
}

func menuFusee(){
    newScreen()
    print("Que voulez vou faire ?"
    + "\n1. 🚀 Lancer une fusée avec vos caractéristique de science actuelle"
    + "\n2. 🪧 Consulter vos fusées"
    + "\n3. 🔤 Afficher une fusée en particulier")
    if let choice = readLine() {
        switch choice {
        case "1":
            lancerFusee()
        case "2":
            newScreen()
            print ("Voici vos fusées :\n\(tabFuseePres)")
            espace()
        case "3":
            newScreen()
            print("quelle fusée voulez-vous afficher ?")
            let reponse = readLine()
            newScreen()
            afficheFusee(nomFusee: reponse!)
        default:
            newScreen()
            print("🛑  Je ne comprends pas  🛑")
            espace()
        }
    }
}

func menuPrincipal(){
    print("Que voulez vous faire ?"
        + "\n1. 🚀 Menu des fusée"
        + "\n2. 🪐 Consulter une orbite de planète"
        + "\n3. 🔬 Consulter mon arbre de science"
        + "\n4. 🛑 Enregistrer et quitter")

    // On récupère la réponse de l'utilisateur
    if let choice = readLine() {
        switch choice {
        case "1":
            menuFusee()
        case "2":
            menuOrbite()
        case "3":
            menuScience()
        case "4":
            enregistrer()
            newScreen()
            exit(0)
        default:
            newScreen()
            print("🛑  Je ne comprends pas  🛑")
            espace()
        }
    }
}
