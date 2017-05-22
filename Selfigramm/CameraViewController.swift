//
//  CameraViewController.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 05.04.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit

class CameraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var photoImageView: UIImageView!
    
    var imagePicker:UIImagePickerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func takePhotoButtonAction(_ sender: Any) {
        print("Take image from camera")
        imagePicker = UIImagePickerController()
        imagePicker!.delegate = self
        imagePicker!.sourceType = .camera
        self.present(imagePicker!, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        print("didFinishPickingMediaWithInfo")
//        print("info - \(info)")
        self.dismiss(animated: true, completion: nil)
//        photoImageView.image = imagePicker?.takePicture()
        photoImageView!.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
//        print("photoIV.image - \(photoImageView!.image!)")
        DataManager.sharedInstance.addPhoto(image: photoImageView!.image!)
    }

    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
