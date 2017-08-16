//
//  ViewController.swift
//  myCollectionView
//
//  Created by vinay on 08/12/16.
//  Copyright © 2016 CodeYeti. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
   // var ref:UICollectionViewCell=myCollectionViewCell()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let identifier="myCell"
    var carImage=[String]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carImage=["lamborghini_PNG10703.png","mercedes_PNG1901.png","mini_PNG11800 (1).png","mini_PNG11800.png","motorcycle_PNG3132.png","porsche_PNG10608.png","seat_PNG11825 (1).png","seat_PNG11825.png","skoda_PNG12368.png","suzuki_PNG12310","motorcycle_PNG3132.png","skoda_PNG12368.png","lamborghini_PNG10703.png","mercedes_PNG1901.png","mini_PNG11800 (1).png","mini_PNG11800.png","motorcycle_PNG3132.png","porsche_PNG10608.png","seat_PNG11825 (1).png","seat_PNG11825.png","skoda_PNG12368.png","suzuki_PNG12310","motorcycle_PNG3132.png","skoda_PNG12368.png","lamborghini_PNG10703.png","mercedes_PNG1901.png","mini_PNG11800 (1).png","mini_PNG11800.png","motorcycle_PNG3132.png","porsche_PNG10608.png","seat_PNG11825 (1).png","seat_PNG11825.png","skoda_PNG12368.png","suzuki_PNG12310","motorcycle_PNG3132.png","skoda_PNG12368.png","mini_PNG11800.png","motorcycle_PNG3132.png","porsche_PNG10608.png","seat_PNG11825 (1).png","seat_PNG11825.png","skoda_PNG12368.png","suzuki_PNG12310","motorcycle_PNG3132.png","skoda_PNG12368.png","lamborghini_PNG10703.png","mercedes_PNG1901.png","mini_PNG11800 (1).png","mini_PNG11800.png","motorcycle_PNG3132.png","porsche_PNG10608.png","seat_PNG11825 (1).png","seat_PNG11825.png","skoda_PNG12368.png","suzuki_PNG12310","motorcycle_PNG3132.png","skoda_PNG12368.png","lamborghini_PNG10703.png","mercedes_PNG1901.png","mini_PNG11800 (1).png","mini_PNG11800.png","motorcycle_PNG3132.png","porsche_PNG10608.png"]
        
        self.collectionView.allowsMultipleSelection = true
        self.collectionView.delaysContentTouches = false
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return carImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        // imp
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! myCollectionViewCell
        
        //------------------
        cell.backgroundColor=UIColor.gray
        
        
        let image=UIImage(named:carImage[indexPath.row])
        cell.imageView.image=image
        
        // background color for selected images
        
        let selectedBGView: UIView = UIView(frame: cell.bounds)
        selectedBGView.backgroundColor = UIColor.green
        cell.selectedBackgroundView = selectedBGView
       
        
        return cell
    }

    //.. setting up layout for adjusting image according to screen
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width=collectionView.frame.width / 3 - 1
        //let height=collectionView.frame.height
        return CGSize(width:width,height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
   
    // for making selectable image in collection view
    
    
func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //addToList.append(objectsArray[indexPath.row])
        let cell = collectionView.cellForItem(at: indexPath as IndexPath)
        cell?.layer.borderWidth = 2.0
        cell?.layer.borderColor = UIColor.brown.cgColor
    }
    
}

