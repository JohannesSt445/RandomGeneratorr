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
    
    //Array aus allen Bildern
    //let images:[UIImage] = [UIImage(named: "apex")!,
        //UIImage(named: "fortnite")!]
    
    //Image literal auswählen
    let images : [UIImage] = [#imageLiteral(resourceName: "rocketLeague"), #imageLiteral(resourceName: "modernWarfare"),#imageLiteral(resourceName: "fortnite"), #imageLiteral(resourceName: "apex"), #imageLiteral(resourceName: "valorant"), #imageLiteral(resourceName: "overwatch"), #imageLiteral(resourceName: "leagueOfLegends"), #imageLiteral(resourceName: "gta5"), #imageLiteral(resourceName: "csGO"), #imageLiteral(resourceName: "minecraft")]
    
    @IBAction func shuffleButtonAction(_ sender: UIButton) {
        imageView.image = images[1]
    }
    
}

