//
//  ViewController.swift
//  ChatCollecthionApp
//
//  Created by minato on 2021/03/10.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    let photos = ["ダウンロード","0913","09131","good-news","のん","りか","ぶた"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return photos.count // 表示するセルの数
          
        }
            
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let testCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) // 表示するセルを登録(先程命名した"Cell")
                
          
                let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
                let cellImage = UIImage(named: photos[indexPath.row])
                imageView.image = cellImage
                
                let label = testCell.contentView.viewWithTag(2) as! UILabel
                label.text = photos[indexPath.row]
                return testCell
            }
   

       func numberOfSections(in collectionView: UICollectionView) -> Int {
             return 1
         
    }
           

}




