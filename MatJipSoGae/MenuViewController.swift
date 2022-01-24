//
//  MenuViewController.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/22.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // UITableViewDelegate, UITableViewDataSource 추가 선언
    
    @IBOutlet weak var mTable: UITableView! // 테이블과 변수 mTable연결
    @IBOutlet weak var restImg2: UIImageView! // restImg2 연결
    @IBOutlet weak var nameLbl: UILabel! // nameLbl 연결
    @IBAction func callBtn(_ sender: Any) {
    }
    @IBAction func mapBtn(_ sender: Any) {
    }
    
    var hang: Int? // cell을 클릭했을 때 보내지는 sender를 저장할 변수
    
    var menuImg:[String]!
    var menuName:[String]!
    var menuPrice:[String]! // 행에 따른 메뉴 정보 배열 선언
    
    let restName2:[String] = ["민들레뜨락", "민들레초밥", "오늘, 버거싶어", "밥은화", "하다식당", "다온"] // 매장이름의 배열 설정
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mTable.dataSource = self // mTable의 dataSource는 이 클래스 안에서 처리한다.
        mTable.delegate = self   // mTable의 delegate는 이 클래스 안에서 처리한다.
        restImg2?.image = UIImage(named: "\(hang ?? 0).png") // 행의 값을 받아와 그에 맞는 매장 이미지를 출력
        nameLbl.text = restName2[hang ?? 0] // // 행의 값을 받아와 그에 맞는 매장이름 출력
        
        if hang == 0 { // 민들레뜨락
            self.menuImg = ["0-0.png","0-1.png"]
            self.menuName = ["닭볶음탕","닭한마리"]
            self.menuPrice = ["20,000원","20,000원"]
        } else if hang == 1 { // 민들레초밥
            self.menuImg = ["1-0.png","1-1.png","1-2.png"]
            self.menuName = ["모둠초밥(10p)","특초밥(12p)","민들레초밥(12p)"]
            self.menuPrice = ["10,000원","15,000원","19,000원"]
        } else if hang == 2 { // 오늘, 버거싶어
            self.menuImg = ["2-0.png","2-1.png","2-2.png","2-3.png"]
            self.menuName = ["오늘 버거","클래식 치즈","순수 버거","몬스터 버거"]
            self.menuPrice = ["4,700원","4,500원","4,200원","6,800원"]
        } else if hang == 3 { // 밥은화
            self.menuImg = ["3-0.png","3-1.png","3-2.png","3-3.png","3-4.png","3-5.png","3-6.png"]
            self.menuName = ["스팸마요","참치마요","치킨마요","제육덮밥","돼지숙주","쭈꾸미숙주","숙주라면"]
            self.menuPrice = ["3,500원","3,500원","4,500원","4,500원","4,500원","5,500원","3,500원"]
        } else if hang == 4 { // 하다식당
            self.menuImg = ["4-0.png","4-1.png","4-2.png","4-3.png"]
            self.menuName = ["등심하다","안심하다","소바하다","카레하다"]
            self.menuPrice = ["9,000원","10,000원","8,500원","8,500원"]
        } else if hang == 5 { // 다온
            self.menuImg = ["5-0.png","5-1.png"]
            self.menuName = ["다온정식","숯불삼겹살"]
            self.menuPrice = ["6,000원","12,000원"]
        }
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // 섹션 안의 행 관련 함수
        return self.menuName.count // 행의 수를  menuName의 수만큼 설정
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // 행(row, cell) 관련 함수
        let mCell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
        // mCell의 아이디가 "menuCell"인 것을 사용
        // as를 사용해서 부모를 자식으로 바꾼다. = DownCasting
        mCell.menuLbl.text = self.menuName[indexPath.row] // 메뉴 이름을 배열 순으로 출력
        mCell.priceLbl.text = self.menuPrice[indexPath.row] // 메뉴 가격을 배열 순으로 출력
        mCell.menuImg?.image = UIImage(named: self.menuImg[indexPath.row]) // 메뉴 이미지를 배열순으로 출력
        return mCell // mCell값 리턴
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
