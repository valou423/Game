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



//crée un ecran de terminal vide

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

func enregistrer(){
    
}


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


//======================
// MARK: - Menu
//======================


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

var tabFusee = ["aze":Fusee(nom:"aze")]
var tabFuseePres = ["aze"]
newScreen()
while true {
    menuPrincipal()
}
