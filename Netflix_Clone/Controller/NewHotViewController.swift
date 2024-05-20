//
//  NewHotViewController.swift
//  Sesac_2DayHomework
//
//  Created by 박성민 on 5/16/24.
//

import UIKit

class NewHotViewController: UIViewController {

    @IBOutlet var searchImage: UIImageView!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchView: UIView!
    
    
    
    @IBOutlet var commingButton: UIButton!
    @IBOutlet var popularButton: UIButton!
    @IBOutlet var topTenButton: UIButton!
    
    @IBOutlet var textImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardTapped()
        setView()
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    func setView() {
        self.view.backgroundColor = .black
        
        searchView.backgroundColor = UIColor.lightGray
        searchView.layer.cornerRadius = 10
        
        searchImage.image = UIImage(systemName: "magnifyingglass")
        searchImage.tintColor = .gray
        
        
        searchTextField.backgroundColor = .clear
        searchTextField.borderStyle = .none
        searchTextField.placeholder = "게임, 시리즈, 영화를 검색하세요."
        
        commingButton.setImage(UIImage(named: "blue")?.withRenderingMode(.alwaysOriginal), for: .normal)//이미지 랜더링 설정 하는 코드 템플릿, 오리지날 두 개의 종류가 존재
        commingButton.setTitle("공개 예정", for: .normal)
        commingButton.layer.cornerRadius = 15
        commingButton.backgroundColor = .white
        commingButton.tintColor = .black
        commingButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        
        popularButton.setImage(UIImage(named: "turquoise")?.withRenderingMode(.alwaysOriginal), for: .normal)
        //버튼의 폰트 크기를 줄이기 위해 버튼 스타일을 디폴트로 할경우 이미지가 안나타나는 이슈 해결
        //button의 plain -> ios15+ , default -> legacy
        //ios15+에서 작성하는 코드와, 미만 코드가 다르게 짜줘야됨
        //즉, deafult 스타일을 다루는 버튼 코드와 plain 스타일을 다루는 버튼 코드가 다름.
        
        popularButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        popularButton.layer.cornerRadius = 15
        popularButton.backgroundColor = .white
        popularButton.tintColor = .black
        popularButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
    
        
        
        topTenButton.setImage(UIImage(named: "pink")?.withRenderingMode(.alwaysOriginal), for: .normal)
        topTenButton.setTitle("TOP 10 시리즈", for: .normal)
        topTenButton.layer.cornerRadius = 15
        topTenButton.backgroundColor = .white
        topTenButton.tintColor = .black
        topTenButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)

        
        
    }
//    @IBOutlet var commingButton: UIButton!
//    @IBOutlet var popularButton: UIButton!
//    @IBOutlet var topTenButton: UIButton!
    @IBAction func returnKeyboard(_ sender: UITextField) {
    }
    
    @IBAction func commingButtonTappend(_ sender: UIButton) {
        textImage.image = UIImage.밀수
    }
    
    @IBAction func popularButtonTappend(_ sender: UIButton) {
        textImage.image = UIImage.스즈메의문단속
    }
    
    @IBAction func topTenButtonTappend(_ sender: UIButton) {
        textImage.image = UIImage.범죄도시3
    }
    

}

extension UIViewController{
    func hideKeyboardTapped() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
