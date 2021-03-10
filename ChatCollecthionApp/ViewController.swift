//
//  ViewController.swift
//  ChatCollecthionApp
//
//  Created by minato on 2021/03/10.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
//    let photos = ["ダウンロード","0913","09131","good-news","のん","りか","ぶた"]
    var Users : [User] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        
    }
    
    func loadData() {
        Users.append(User(name: "のん", age: "21歳", imageName: "0913"))
        Users.append(User(name: "のんたん", age: "20歳", imageName: "09131"))
        Users.append(User(name: "かすみん", age: "30歳", imageName: "good-news"))
        Users.append(User(name: "りか", age: "20歳", imageName: "ダウンロード"))
        Users.append(User(name: "のん", age: "18歳", imageName: "のん"))
        Users.append(User(name: "ぶた", age: "18歳", imageName: "ぶた"))
        Users.append(User(name: "りか", age: "22歳", imageName: "りか"))
      
    }
    
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return Users.count // 表示するセルの数
          
        }
            
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let testCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) // 表示するセルを登録(先程命名した"Cell")
                
          
//                let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
//                let cellImage = UIImage(named: Users[indexPath.row])
//                imageView.image = cellImage
//
//                let label = testCell.contentView.viewWithTag(2) as! UILabel
//                label.text = Users[indexPath.row]
//                return testCell

                   testCell.UserNameLabel.text = Users[indexPath.row].name
                    
                    testCell.UserImageView.image = UIImage(named: Users[indexPath.row].imageName)

                    return testCell
                


                


            }
   

       func numberOfSections(in collectionView: UICollectionView) -> Int {
             return 1
         
    }
           

}




