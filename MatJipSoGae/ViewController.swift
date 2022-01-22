//
//  ViewController.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/17.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView! // 테이블 뷰에 대한 아울렛 변수 table 선언
    
//    var name : String = ""
//    var category : String = ""
//    enum Name : Int {
//        case a = 0
//        case b
//        case c
//        case d
//        case e
//        case f
//        func aName() {
//            switch self{
//            case .a:
//                var name : String = "민들레뜨락"
//                var category : String = "술집"
//            case .b:
//                var name : String = "민들레초밥"
//                var category : String = "일식"
//            case .c:
//                var name : String = "오늘, 버거싶어"
//                var category : String = "패스트푸드"
//            case .d:
//                var name : String = "밥은화"
//                var category : String = "덮밥"
//            case .e:
//                var name : String = "하다식당"
//                var category : String = "일식"
//            case .f:
//                var name : String = "다온"
//                var category : String = "한식"
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self // table의 dataSource는 이 클래스 안에서 처리한다.
        table.delegate = self   // table의 delegate는 이 클래스 안에서 처리한다.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // 섹션 안의 행 관련 함수
        return 6 // 행(row)의 개수를 6개로 정함
    }
    // func numberOfSections(in tableView: UITableView) -> Int { // 섹션 함수
    //     return 3 // 섹션의 개수를 3개로 지정
    // }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 행(row, cell) 관련 함수
        // let cell = UITableViewCell.init(style: .value1, reuseIdentifier: "myCell")
        // let cell = UITableViewCell.(style: .default, reuseIdentifier: "myCell")
        // UITableViewCell의 init생성자의 style을 subtitle 값으로 생성한 후 상수 cell로 선언
        // cell.textLabel?.text = "\(indexPath.row)"  // indexPath의 row값을 cell의 textLabel에 출력
        // cell.detailTextLabel?.text = indexPath.description
        // cell의 detailTextLabel값을 indexPath의 description값으로 설정
        // description의 값에 앞은 섹션, 뒤의 값은 섹션의 행을 뜻한다.
        // cell.imageView?.image = UIImage(named: "swift.png") // cell에 image를 삽입
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        // cell의 아이디가 "myCell"인 것을 사용
        // as를 사용해서 부모를 자식으로 바꾼다. =DownCasting
        cell.nameLbl.text = indexPath.description // nameLbl의 text를 indexPath.description로 초기화
        cell.categoryLbl.text = "양식"  // categoryLbl의 text를 "양식"으로 초기화
        cell.restImg?.image = UIImage(named: "\(indexPath.row).png")
        // restImg의 image를 "\(indexPath.row).png"으로 초기화
        return cell  // cell값을 리턴
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {  // 행(cell)을 클릭했을 때
        performSegue(withIdentifier: "ShowDetail", sender: indexPath.row)
        // cell을 클릭했을 때 ShowDetail로 이동하면서 indexPath.row값을 보낸다.
    }
}

