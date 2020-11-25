

public class Fusee{
    var nbEtage:Double
    var catMoteur:Double
    var catAerodynamique:Double
    var coiffe = 1.0
    var tOu = "Orbite Terre"
    
    var carburant = caracFuseeTot
    
    var lieux = "TerreSol"
    var nom:String
    
    func getCarburant() -> Double{
        return self.carburant
    }
    
    func getNbEtage() -> Double{
        return self.nbEtage
    }
    
    func getCatMoteur() -> Double{
        return self.nbEtage
    }
    
    func getCatAerodynamique() -> Double{
        return self.catAerodynamique
    }
    
    func getCoiffe() -> Double{
        return self.coiffe
    }
    
    func getNom() -> String {
        return self.nom
    }
    
    func getTOu() -> String {
        return self.tOu
    }
    
    func setTOu(tOu:String){
        self.tOu = tOu
    }
    
    func setCarburant(carburant:Double){
        self.carburant = carburant
    }
    
    func setNbEtage(nbEtage:Double){
        self.nbEtage = nbEtage
    }
    
    func setCatMoteur(catMoteur:Double){
        self.catMoteur = catMoteur
    }
    
    func setCoiffe(coiffe:Double){
        self.coiffe = coiffe
    }
    
    func setCatAero(catAerodynamique:Double){
        self.catAerodynamique = catAerodynamique
    }
    
    func setNom(nom:String){
        self.nom = nom
    }
    
    init(nom:String){
        self.nbEtage = 1
        self.catMoteur = 0
        self.catAerodynamique = 0
        self.nom = nom
        calcCatNewFusee()
    }
}
