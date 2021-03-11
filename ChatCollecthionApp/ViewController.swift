//
//  ViewController.swift
//  ChatCollecthionApp
//
//  Created by minato on 2021/03/10.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
   
    @IBOutlet weak var mycollectionView: UICollectionView!
    
    
   
//    let photos = ["ダウンロード","0913","09131","good-news","のん","りか","ぶた"]
    var Users : [User] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
       
    }
    
    func loadData() {
        Users.append(User(name: "のん", age: "21歳", imageName: "0913", city: "東京", comment: "こんにちは！"))
        Users.append(User(name: "のんたん", age: "20歳", imageName: "09131", city: "京都", comment: "こんばんは！"))
        Users.append(User(name: "かすみん", age: "30歳", imageName: "good-news", city: "神奈川", comment: "おはよう！"))
        Users.append(User(name: "りか", age: "20歳", imageName: "ダウンロード", city: "東京", comment: "こんにちは！"))
        Users.append(User(name: "のん", age: "18歳", imageName: "のん", city: "東京", comment: "よろしく！"))
        Users.append(User(name: "ぶた", age: "18歳", imageName: "ぶた", city: "東京", comment: "こんばんは！"))
        Users.append(User(name: "りか", age: "22歳", imageName: "りか", city: "埼玉", comment: "おはよう！"))

    }
    
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return Users.count // 表示するセルの数
          
        }
            
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
               
                guard let cell = mycollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? userCollectionViewCell else {
                            fatalError("Dequeue failed: Cell.")
                }

                     cell.useNameLabel.text = Users[indexPath.row].name
                     cell.userAgeLabel.text = Users[indexPath.row].age
                     cell.userImageLabel.image = UIImage(named: Users[indexPath.row].imageName)
                     cell.userCityLabel.text = Users[indexPath.row].city
                     cell.userCommentLabel.text = Users[indexPath.row].comment
                   
                return cell


                


            }
   

       func numberOfSections(in collectionView: UICollectionView) -> Int {
             return 1
         
    }
           



}
