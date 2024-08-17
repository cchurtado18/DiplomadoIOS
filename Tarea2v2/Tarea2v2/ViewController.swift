//
//  ViewController.swift
//  Tarea2v2
//
//  Created by User-UAM on 8/15/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewUp: UIView!
    
    @IBOutlet weak var ViewDown: UIView!
    
    @IBOutlet weak var ViewButtonsUp: UIView!
    
    @IBOutlet weak var ViewImageCenter: UIView!
    
    @IBOutlet weak var ViewButtonsDown: UIStackView!
    
    @IBOutlet weak var ViewAlbum: UIStackView!
    
    @IBOutlet weak var ViewPeople: UIStackView!
    
    @IBOutlet weak var ViewLikes: UIStackView!
    
    @IBOutlet weak var ViewImage: UIView!
    
    @IBOutlet weak var ViewImageText: UIStackView!
    
    @IBOutlet weak var ViewName: UIView!
    
    @IBOutlet weak var ViewDescription: UIView!
    
    @IBOutlet weak var ButtonShare: UIButton!
    
    @IBOutlet weak var ButtonMenu: UIButton!
    
    @IBOutlet weak var BtnLikes: UIButton!
    
    @IBOutlet weak var BtnPeople: UIButton!
    
    @IBOutlet weak var BtnAlbum: UIButton!
    
    @IBOutlet weak var LblAlbum: UILabel!
    
    @IBOutlet weak var LblPeople: UILabel!
    
    @IBOutlet weak var LblLikes: UILabel!
    
    @IBOutlet weak var LblName: UILabel!
    
    @IBOutlet weak var LblDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let customColor = UIColor(red: 204/255.0, green: 93/255.0, blue: 76/255.0, alpha: 1.0)
        
        let SHARE_IMAGE = UIImage(named: "Compartir.png")
        let MENU_IMAGE = UIImage(named: "Menu.png")
        let LIKES_IMAGE = UIImage(named: "Likes.png")
        let PEOPLE_IMAGE = UIImage(named: "People.png")
        let ALBUM_IMAGE = UIImage(named: "Album.png")
        
        ViewUp.backgroundColor = customColor
        ViewButtonsUp.backgroundColor = customColor
        ViewImageCenter.backgroundColor = customColor
        ViewButtonsDown.backgroundColor = customColor
        ViewAlbum.backgroundColor = customColor
        ViewPeople.backgroundColor = customColor
        ViewLikes.backgroundColor = customColor
        ViewImage.backgroundColor = customColor
        ViewImageText.backgroundColor = customColor
        ViewName.backgroundColor = customColor
        ViewDescription.backgroundColor = customColor
        
        ButtonShare.setTitle("", for: .normal) //Quitamos el título del botón
        
        ButtonMenu.setTitle("", for: .normal) //Quitamos el título del botón
        
        BtnAlbum.setTitle("", for: .normal) //Quitamos el título del botón
        
        BtnPeople.setTitle("", for: .normal) //Quitamos el ("", for: .normal) //Quitamos el título del botón
        
        BtnLikes.setTitle("", for: .normal) //Quitamos el ("", for: .normal) //Quitamos el título del botón
        
        LblAlbum.text = "127"
        LblAlbum.textColor = .white
        
        
        LblPeople.text = "2261"
        LblPeople.textColor = .white
        
        LblLikes.text = "5531"
        LblLikes.textColor = .white
        
        LblName.textColor = .white
        LblDescription.textColor = .white
        
        ButtonShare.setImage(SHARE_IMAGE?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        ButtonMenu.setImage(MENU_IMAGE?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        BtnAlbum.setImage(ALBUM_IMAGE?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        BtnPeople.setImage(PEOPLE_IMAGE?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        BtnLikes.setImage(LIKES_IMAGE?.withRenderingMode(.alwaysOriginal), for: .normal)
        
    }
    
    @IBAction func TouchButtonLikes(_ sender: Any) {
        if let likesCount = Int(LblLikes.text ?? "0") {
                    // Incrementar el valor en 1
                    let newLikesCount = likesCount + 1
                    // Actualizar el texto del Label
                    LblLikes.text = "\(newLikesCount)"
                }
    }
    
    
    @IBAction func TouchBtnPeople(_ sender: Any) {
        if let likesCount = Int(LblPeople.text ?? "0") {
                    // Incrementar el valor en 1
                    let newLikesCount = likesCount + 1
                    // Actualizar el texto del Label
                    LblPeople.text = "\(newLikesCount)"
                }
    }
    
    


}

