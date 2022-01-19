//
//  ViewController.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/17.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var table: UITableView! // 테이블 뷰에 대한 아울렛 변수 table 선언
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self // table의 dataSource는 이 클래스 안에서 처리한다.
        table.delegate = self   // table의 delegate는 이 클래스 안에서 처리한다.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // 섹션 안의 행 관련 함수
        return 5 // 행(row)의 개수를 5개로 정함
    }
    func numberOfSections(in tableView: UITableView) -> Int { // 섹션 함수
        return 3 // 섹션의 개수를 3개로 지정
    }
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
        cell.categoryLbl.text = "양식"   // categoryLbl의 text를 "양식"으로 초기화
        return cell  // cell값을 리턴
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {  // 행(cell)을 클릭했을 때
        print(indexPath.row) // 콘솔 창에 행을 출력
    }
}

