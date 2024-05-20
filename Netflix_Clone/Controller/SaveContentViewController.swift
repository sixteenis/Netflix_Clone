//
//  SaveContentViewController.swift
//  Sesac_2DayHomework
//
//  Created by 박성민 on 5/16/24.
//

import UIKit

class SaveContentViewController: UIViewController {
    @IBOutlet var mainTitle: UILabel!
    @IBOutlet var subTitle: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var setButton: UIButton!
    @IBOutlet var savecontentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        setView()

    }
    func setView() {
        mainTitle.text = "\'나만의 자동 저장\'기능"
        mainTitle.textColor = .white
        mainTitle.font = .systemFont(ofSize: 25)
        mainTitle.textAlignment = .center
        
        subTitle.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n 디바이스에 언제나 시청할 컨텐츠가 준비되니 지루할 틈이 없어요."
        subTitle.textColor = .lightGray
        subTitle.font = .systemFont(ofSize: 15)
        subTitle.textAlignment = .center
        subTitle.numberOfLines = 0
        
        imageView.image = UIImage(named: "dummy")
        imageView.contentMode = .scaleAspectFill
        
        setButton.setTitle("설정하기", for: .normal)
        setButton.tintColor = .white
        setButton.backgroundColor = .systemBlue
        setButton.layer.cornerRadius = 5
        
        savecontentButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        savecontentButton.tintColor = .black
        savecontentButton.backgroundColor = .white
        savecontentButton.layer.cornerRadius = 5
    }
    
    
    
    @IBAction func setButtonTappend(_ sender: UIButton) {
        imageView.image = UIImage.patch
    }
    
    @IBAction func savecontentButtonTappend(_ sender: UIButton) {
        imageView.image = UIImage.patch
    }
    
    

}
