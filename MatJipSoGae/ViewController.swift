//
//  ViewController.swift
//  MatJipSoGae
//
//  Created by MacBook Air on 2022/01/17.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate {
    // UISearchBarDelegate 선언
    @IBOutlet weak var table: UITableView! // 테이블 뷰에 대한 아울렛 변수 table 선언
    @IBOutlet weak var searchBar: UISearchBar!
    
    let restName:[String] = ["민들레뜨락", "민들레초밥", "오늘, 버거싶어", "밥은화", "하다식당", "다온"] // 매장이름의 배열 설정
    let restCategory:[String] = ["술집", "일식", "패스트푸드", "덮밥", "일식", "한식"] // 매장 분류 배열 설정
    var filteredData:[String]! // 필터링한 정보를 저장할 배열 선언
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self // table의 dataSource는 이 클래스 안에서 처리한다.
        table.delegate = self   // table의 delegate는 이 클래스 안에서 처리한다.
        searchBar.delegate = self // searchBar 관련 이벤트 처리
        searchBar.placeholder = "매장 이름을 검색하세요." // search bar에 회색 글씨(힌트) 설정
        self.filteredData = self.restName // 첫화면에는 모든 행이 출력하도록 모든 배열의 정보를 설정
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // 섹션 안의 행 관련 함수
        return self.filteredData.count // 행(row)의 개수를 restName 배열의 개수로 정함
    }
    // func numberOfSections(in tableView: UITableView) -> Int { // 섹션 함수
    //     return 3 // 섹션의 개수를 3개로 지정
    // }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 행(row, cell) 관련 함수
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
        // cell의 아이디가 "myCell"인 것을 사용
        // as를 사용해서 부모를 자식으로 바꾼다. = DownCasting

        cell.nameLbl.text = self.filteredData[indexPath.row] // nameLbl의 text를 restName의 행의 번호로 초기화
        cell.categoryLbl.text = self.restCategory[indexPath.row]  // categoryLbl의 text를 restCategory의 행의 번호로 초기화
        cell.restImg?.image = UIImage(named: "\(indexPath.row).png")
        // restImg의 image를 "\(indexPath.row).png"으로 초기화
        return cell  // cell값을 리턴
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {  // 행(cell)을 클릭했을 때
        performSegue(withIdentifier: "ShowDetail", sender: indexPath.row)
        // cell을 클릭했을 때 ShowDetail로 이동하면서 indexPath.row값을 보낸다.
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? restName: restName.filter({(dataString:String) -> Bool in
            // If dataltem matches the searchText,return true to include it
            return dataString.range (of: searchText, options: .caseInsensitive) != nil
        })
        table.reloadData() // 필터링된 기준으로 테이블 뷰 정렬
    }
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) { // 검색바에서 입력을 시작할 때
        self.searchBar.showsCancelButton = true // 취소버튼 활성화
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) { // 취소버튼 클릭 시
        self.searchBar.showsCancelButton = false // 취소버튼 비활성화
        self.searchBar.resignFirstResponder() // 키보드창 내리기
    }
}


