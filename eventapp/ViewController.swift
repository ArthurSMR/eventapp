//
//  ViewController.swift
//  eventapp
//
//  Created by Arthur Rodrigues on 18/04/19.
//  Copyright © 2019 Arthur Rodrigues. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imageView: UIImage?
    let imagePicker = UIImagePickerController()
    
    
    var ref: DatabaseReference?
    
    @IBOutlet weak var nameChange: UITextField!
    @IBOutlet weak var ageChange: UITextField!
    @IBOutlet weak var UIImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
    }

    @IBAction func CameraButton(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.originalImage] as? UIImage {
            imageView = pickedImage
            
            UIImageView.image = imageView
        
        }
        
        dismiss(animated: true)
        
        
    }
    
    
    
    @IBAction func changeName(_ sender: UIButton) {
        ref = Database.database().reference()
        
//
        ref?.child("someid/name").setValue(nameChange.text)
        ref?.child("someid/age").setValue(ageChange.text)
    }
    
}

