//
//  ViewController.swift
//  RandomGameGenerator
//
//  Created by Johannes Stümer / BBS2H20A on 06.09.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var shuffleButton: UIButton!
    
    @IBOutlet weak var gameLabel: UILabel!
    
    @IBOutlet weak var zaehlerLabel: UILabel!
    @IBOutlet weak var noobButton: UIButton!
    //Array aus allen Bildern
    //let images:[UIImage] = [UIImage(named: "apex")!,
        //UIImage(named: "fortnite")!]
    var zaehler = 0
    //Image literal auswählen
    let images: [UIImage] = [#imageLiteral(resourceName: "rocketLeague"), #imageLiteral(resourceName: "modernWarfare"),#imageLiteral(resourceName: "fortnite"), #imageLiteral(resourceName: "apex"), #imageLiteral(resourceName: "valorant"), #imageLiteral(resourceName: "overwatch"), #imageLiteral(resourceName: "leagueOfLegends"), #imageLiteral(resourceName: "gta5"), #imageLiteral(resourceName: "csGO"), #imageLiteral(resourceName: "minecraft")]
    
    @IBAction func shuffleButtonAction(_ sender: UIButton) {
        imageView.image = images.randomElement()
        
        let currentImage = imageView.image
        
        switch currentImage  {
        case #imageLiteral(resourceName: "rocketLeague"):
            gameLabel.text = "Rocket League!!!"
        case #imageLiteral(resourceName: "csGO"):
            gameLabel.text = "Counte Strike!!!"
        case #imageLiteral(resourceName: "overwatch"):
            gameLabel.text = "Overwatch!!!"
        case #imageLiteral(resourceName: "gta5"):
            gameLabel.text = "Grand Theft Auto!!!"
        case #imageLiteral(resourceName: "modernWarfare"):
            gameLabel.text = "Modern Warfare!!!"
        case #imageLiteral(resourceName: "fortnite"):
            gameLabel.text = "Fortnite!!!"
        case #imageLiteral(resourceName: "valorant"):
            gameLabel.text = "Valorant!!!"
        case #imageLiteral(resourceName: "apex"):
            gameLabel.text = "Apex Legends!!!"
        case #imageLiteral(resourceName: "minecraft"):
            gameLabel.text = "Minecraft!!!"
        case #imageLiteral(resourceName: "leagueOfLegends"):
            gameLabel.text = "League of Legends!!!"
        default:
            gameLabel.text = ""
        }
        
        zaehler += 1
        print(zaehler)
        
        versuche(zahl: zaehler)
    }
    //Funktion für das "Herunterzählen" der Versuche
    func versuche(zahl : Int){
        switch zahl {
        case 1:
            zaehlerLabel.text = "Noch 2 Versuche"
        case 2:
            zaehlerLabel.text = "Noch 1 Versuch"
        case 3:
            zaehlerLabel.text = "Keine Versuche mehr"
            showAlert(message: "Keine Versuche mehr")
            shuffleButton.isEnabled = false
            shuffleButton.alpha = 0.5
        default:
            zaehlerLabel.text = "Du Noob"
        }
    }
    @IBAction func noobButtonFunction(_ sender: UIButton) {
        resetView()
    }
    
    // Funktion für alert
    func showAlert(message: String){
        let alert = UIAlertController(title: "Game over", message: message, preferredStyle: .alert)
        
        //Funktion für den Alert
        let action = UIAlertAction(title: "Ok", style: .default, handler: {(action) in
            self.noobButton.isHidden = false
        })
        let action2 = UIAlertAction(title: "Erneut versuchen", style: .default, handler: {(action) in
            self.resetView()
        })
        
        alert.addAction(action)
        alert.addAction(action2)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    //Funktion zum Reseten der View
    func resetView(){
        zaehler = 0
        zaehlerLabel.text = "Noch 3 Versuche"
        gameLabel.text = ""
        shuffleButton.alpha = 1
        shuffleButton.isEnabled = true
        imageView.image = #imageLiteral(resourceName: "default-image")
    }
    
    
}

