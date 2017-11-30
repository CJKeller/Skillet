//
//  CameraViewController.swift
//  Skillet
//
//  Created by CJ Keller on 11/28/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
// Help from https://gist.github.com/tad-iizuka/fc35bc7835920c0b8b84e316f83e3a40
//

import UIKit
import AVFoundation
import Photos

class CameraViewController: UIViewController, AVCapturePhotoCaptureDelegate {
    
    var captureSession: AVCaptureSession?
    var capturePhotoOutput: AVCapturePhotoOutput?
    var previewLayer: AVCaptureVideoPreviewLayer?
    var imageToSave: UIImage?
    @objc var captureDevice: AVCaptureDevice?
    
    
    @IBOutlet weak var preView: UIView!
    
    @IBOutlet weak var confirmPhoto: UIButton!
    @IBOutlet weak var retakePhoto: UIButton!
    @IBOutlet var capture: UIButton!
    @IBAction func capture(_ sender: Any) {
        let photoSettings : AVCapturePhotoSettings!
        photoSettings = AVCapturePhotoSettings.init(format: [AVVideoCodecKey: AVVideoCodecType.jpeg])
        photoSettings.isAutoStillImageStabilizationEnabled = true
        photoSettings.flashMode = .off
        photoSettings.isHighResolutionPhotoEnabled = false
        self.capturePhotoOutput?.capturePhoto(with: photoSettings, delegate: self)
    }
    
    @IBAction func ResetButton(_ sender: Any) {
        self.viewDidLoad()
        self.viewWillAppear(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        capture.isEnabled = true
        capture.isHidden = false
        retakePhoto.isHidden = true
        retakePhoto.isEnabled = false
        confirmPhoto.isHidden = true
        confirmPhoto.isEnabled = false
        self.captureSession = AVCaptureSession()
        self.captureSession?.sessionPreset = .photo
        self.capturePhotoOutput = AVCapturePhotoOutput()
        self.captureDevice = AVCaptureDevice.default(for: .video)
        let input = try! AVCaptureDeviceInput(device: self.captureDevice!)
        self.captureSession?.addInput(input)
        self.captureSession?.addOutput(self.capturePhotoOutput!)
        
        self.previewLayer = AVCaptureVideoPreviewLayer(session: self.captureSession!)
        self.previewLayer?.frame = self.preView.bounds
        self.previewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        self.previewLayer?.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
        self.preView.layer.addSublayer(self.previewLayer!)
        
        self.captureSession?.startRunning()
    }
    
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        
        // Check if there is any error in capturing
        guard error == nil else {
            print("Fail to capture photo: \(String(describing: error))")
            return
        }
        
        // Check if the pixel buffer could be converted to image data
        guard let imageData = photo.fileDataRepresentation() else {
            print("Fail to convert pixel buffer")
            return
        }
        
        // Check if UIImage could be initialized with image data
        guard let capturedImage = UIImage.init(data: imageData) else {
            print("Fail to convert image data to UIImage")
            return
        }
        imageToSave = capturedImage
        // Stop video capturing session (Freeze preview)
        self.captureSession?.stopRunning()
        capture.isEnabled = false
        capture.isHidden = true
        retakePhoto.isHidden = false
        retakePhoto.isEnabled = true
        confirmPhoto.isHidden = false
        confirmPhoto.isEnabled = true
    }
    
    //      MARK: - Navigation
    //
    //      In a storyboard-based application, you will often want to do a little preparation before navigation
    //     Get the new view controller using segue.destinationViewController.
    //     Pass the selected object to the new view controller.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "confirmPhoto" {
            let destinationViewController : CaptureViewController = segue.destination as! CaptureViewController
            destinationViewController.imageToShow = imageToSave
        }
    }
    
}
