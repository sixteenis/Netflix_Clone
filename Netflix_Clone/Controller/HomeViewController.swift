//
//  HomeViewController.swift
//  Sesac_2DayHomework
//
//  Created by 박성민 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var tabTitle: UINavigationItem!
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var listButton: UIButton!
    
    @IBOutlet var contentLabel: UILabel!
    
    @IBOutlet var subImage1: UIImageView!
    @IBOutlet var subImage2: UIImageView!
    @IBOutlet var subImage3: UIImageView!
    
    
    @IBOutlet var nIcon1: UIImageView!
    @IBOutlet var nIcon2: UIImageView!
    @IBOutlet var nIcon3: UIImageView!
    
    
    @IBOutlet var topTenIcon1: UIImageView!
    @IBOutlet var topTenIcon2: UIImageView!
    @IBOutlet var topTenIcon3: UIImageView!
    
    @IBOutlet var subViewLabel1: UILabel!
    @IBOutlet var subViewLabel2: UILabel!
    @IBOutlet var subViewLabel3: UILabel!
    let movieArray = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3", "서울의봄","스즈메의문단속","아바타물의길","오펜하이머","육사오","콘크리트유토피아"]
    
    let newSeries = ["새로운 시리즈","","","","",""]
    var randomNum1: Int = 0 //랜덤 숫자
    var randomNum2: Int = 0
    var randomNum3: Int = 0
    var mainRandomNum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        

    }
    func setView() {
        self.view.backgroundColor = .black
        randomNumCreate()
        setMainImage()
        setPlayButton()
        setListButton()
        setContentLabel()
        setsubImage()
        subViewTitleSet()
    }
    func setMainImage() {
//        mainImage.image = UIImage(named: movieArray[mainRandomNum])
        mainImage.clipsToBounds = true
        mainImage.contentMode = .scaleToFill
        mainImage.layer.cornerRadius = 30
    }
    func setPlayButton() {
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 5
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.setTitle("재생", for: .normal)
        playButton.tintColor = .black
        //playButton.configuration?.imagePadding = 10
    }
    func setListButton() {
        listButton.backgroundColor = .darkGray
        listButton.layer.cornerRadius = 5
        listButton.setImage(UIImage(systemName: "plus"), for: .normal)
        listButton.setTitle("내가 찜한 리스트", for: .normal)
        listButton.tintColor = .white
        //listButton.configuration?.imagePadding = 100
    }
    func setContentLabel() {
        contentLabel.text = "지금 뜨는 콘텐츠"
        contentLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        contentLabel.textColor = .white
        
    }
    func setsubImage() {
//        subImage1.image = UIImage(named: movieArray[randomNum1])
        subImage1.clipsToBounds = true
        subImage1.contentMode = .scaleToFill
        subImage1.layer.cornerRadius = 30
        nIcon1.image = UIImage.singleBadge
        topTenIcon1.image = UIImage.top10Badge
        
//        subImage2.image = UIImage(named: movieArray[randomNum2])
        subImage2.clipsToBounds = true
        subImage2.contentMode = .scaleToFill
        subImage2.layer.cornerRadius = 30
        nIcon2.image = UIImage.singleBadge
        topTenIcon2.image = UIImage.top10Badge
        
//        subImage3.image = UIImage(named: movieArray[randomNum3])
        subImage3.clipsToBounds = true
        subImage3.contentMode = .scaleToFill
        subImage3.layer.cornerRadius = 30
        nIcon3.image = UIImage.singleBadge
        topTenIcon3.image = UIImage.top10Badge
        
        
    }
    func subViewTitleSet() {
        if subViewLabel1.text == "새로운 시리즈"{
            subViewLabel1.textColor = .white
            subViewLabel1.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
            subViewLabel1.textAlignment = .center
            subViewLabel1.backgroundColor = UIColor.red
            subViewLabel1.isHidden = false
            
        }else{
            subViewLabel1.isHidden = true
        }
        if subViewLabel2.text == "새로운 시리즈"{
            subViewLabel2.textColor = .white
            subViewLabel2.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
            subViewLabel2.textAlignment = .center
            subViewLabel2.backgroundColor = UIColor.red
            subViewLabel2.isHidden = false
        }else{
            subViewLabel2.isHidden = true
        }
        if subViewLabel3.text == "새로운 시리즈"{
            subViewLabel3.textColor = .white
            subViewLabel3.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
            subViewLabel3.textAlignment = .center
            subViewLabel3.backgroundColor = UIColor.red
            subViewLabel3.isHidden = false
        }else{
            subViewLabel3.isHidden = true
        }
    }
    // MARK: - 랜덤 이미지 함수
    func randomNumCreate() {

        var postImage = movieArray
        randomNum1 = Int.random(in: 0...postImage.count-1)
        subImage1.image = UIImage(named: postImage[randomNum1])
        postImage.remove(at: randomNum1)
        
            randomNum2 = Int.random(in: 0...postImage.count-1)
        subImage2.image = UIImage(named: postImage[randomNum2])
        postImage.remove(at: randomNum2)
            randomNum3 = Int.random(in: 0...postImage.count-1)
        subImage3.image = UIImage(named: postImage[randomNum3])
        postImage.remove(at: randomNum3)
            mainRandomNum = Int.random(in: 0...postImage.count-1)
        mainImage.image = UIImage(named: postImage[mainRandomNum])
        tabTitle.title = "박성민님 영화 \(postImage[mainRandomNum]) 한번 잡숴보시죠!"
        boolRandom()
        subViewLabel1.text = newSeries[Int.random(in: 0...5)]
        subViewLabel2.text = newSeries[Int.random(in: 0...5)]
        subViewLabel3.text = newSeries[Int.random(in: 0...5)]
        
        
        
    }
    // MARK: - 뱃지를 랜덤으로 보여줌 ㅇㅇ
    func boolRandom(){
        nIcon1.isHidden = Bool.random()
        nIcon2.isHidden = Bool.random()
        nIcon3.isHidden = Bool.random()
        topTenIcon1.isHidden = Bool.random()
        topTenIcon2.isHidden = Bool.random()
        topTenIcon3.isHidden = Bool.random()
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        randomNumCreate()
        subViewTitleSet()
    }
    
    
    
    
    
    
    
}
