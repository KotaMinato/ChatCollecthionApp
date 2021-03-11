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
        Users.append(User(name: "のん", age: "21歳", imageName: "0913", city: "東京", comment: "こんにちは！💑こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！"))
        Users.append(User(name: "のんたん", age: "20歳", imageName: "09131", city: "京都", comment: "こんばんは！💑こんばんは！こんばんは！こんばんは！こんばんは！こんばんは！こんばんは！"))
        Users.append(User(name: "かすみん", age: "30歳", imageName: "good-news", city: "神奈川", comment: "おはよう！💑おはよう！おはよう！おはよう！おはよう！おはよう！おはよう！おはよう！"))
        Users.append(User(name: "りか", age: "20歳", imageName: "ダウンロード-1", city: "東京", comment: "こんにちは！💑こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！こんにちは！"))
        Users.append(User(name: "のん", age: "18歳", imageName: "images", city: "東京", comment: "よろしく！よろしく！💑よろしく！よろしく！よろしく！よろしく！よろしく！よろしく！よろしく！"))
        Users.append(User(name: "アリー", age: "18歳", imageName: "ショート", city: "東京", comment: "こんばんは！💑こんばんは！こんばんは！こんばんは！こんばんは！こんばんは！こんばんは！こんばんは！"))
        Users.append(User(name: "りか", age: "22歳", imageName: "笑顔", city: "埼玉", comment: "おはよう！💑おはよう！おはよう！おはよう！おはよう！おはよう！おはよう！おはよう！おはよう！おはよう！"))

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
