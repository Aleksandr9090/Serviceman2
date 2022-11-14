//
//  FinanceViewController.swift
//  Serviceman
//
//  Created by Aleksandr on 14.11.2022.
//

import UIKit
import SnapKit

class FinanceViewController: UIViewController {
    
    private lazy var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()

    private lazy var view2: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()

    private lazy var view3: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    private func layout() {
        view.addSubview(view1)
        view1.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.center.equalToSuperview()
        }
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
