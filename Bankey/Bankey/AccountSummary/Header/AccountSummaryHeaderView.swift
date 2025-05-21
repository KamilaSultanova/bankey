//
//  AccountSummaryHeaderView.swift
//  Bankey
//
//  Created by Kamila Sultanova on 16.05.2025.
//

import UIKit

class AccountSummaryHeaderView: UIView {
        
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    let shakeyBellView = ShakeyBellView()
    
    struct ViewModel {
        let welcomeMessage: String
        let name: String
        let date: Date
        
        var dateFormatted: String {
            return date.monthDayYearString
        }
    }
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           commonInit()
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           commonInit()
       }
       
       override var intrinsicContentSize: CGSize {
           return CGSize(width: UIView.noIntrinsicMetric, height: 144)
       }
       
       private func commonInit() {
           let bundle = Bundle(for: AccountSummaryHeaderView.self)
           Bundle.main.loadNibNamed("AccountSummaryHeaderView", owner: self, options: nil)
           addSubview(contentView)
           contentView.backgroundColor = appColor
           
           contentView.translatesAutoresizingMaskIntoConstraints = false
           contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
           contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
           contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
           contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
           
           setupShakeBellView()
       }
    
    private func setupShakeBellView() {
        shakeyBellView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(shakeyBellView)
        
        NSLayoutConstraint.activate([
            shakeyBellView.trailingAnchor.constraint(equalTo: trailingAnchor),
            shakeyBellView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func configure(viewmodel: ViewModel) {
        welcomeLabel.text = viewmodel.welcomeMessage
        nameLabel.text = viewmodel.name
        dateLabel.text = viewmodel.dateFormatted
    }
}
