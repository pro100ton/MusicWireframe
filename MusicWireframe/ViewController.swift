//
//  ViewController.swift
//  MusicWireframe
//
//  Created by Антон Шалимов on 05.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    var isPlaying: Bool = true {
        didSet {
            pauseButton.isSelected = isPlaying
        }
    }
    
    // MARK: Outlets
    
    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var reverseButton: UIButton!
    @IBOutlet var pauseButton: UIButton!
    @IBOutlet var forwardButton: UIButton!
    @IBOutlet var reverseBackground: UIView!
    @IBOutlet var pauseBackground: UIView!
    @IBOutlet var forwardBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [reverseBackground, forwardBackground, pauseBackground].forEach { view in
            view?.layer.cornerRadius = view!.frame.height / 2
            view?.clipsToBounds = true
            view?.alpha = 0.0
        }
    }
    
}

