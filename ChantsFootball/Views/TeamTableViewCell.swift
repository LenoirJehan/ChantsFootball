//
//  TeamTableViewCell.swift
//  ChantsFootball
//
//  Created by Jehan lenoir on 07/12/2023.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    static let cellId = "TeamTableViewCell"
    
    // MARK: - UI
    
    private lazy var containerVw: UIView = {
       let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackVw: UIStackView = {
       let stackVw = UIStackView()
        stackVw.translatesAutoresizingMaskIntoConstraints = false
        stackVw.spacing = 4
        stackVw.axis = .vertical
        return stackVw
    }()
    
    private lazy var badgeImgVw: UIImageView = {
       let imgVw = UIImageView()
        imgVw.translatesAutoresizingMaskIntoConstraints = false
        imgVw.contentMode = .scaleAspectFit
        return imgVw
    }()
    
    private lazy var playBackButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        return button
    }()
    
    private lazy var nameLabelVw: UILabel = {
       let labelVw = UILabel()
        labelVw.translatesAutoresizingMaskIntoConstraints = false
        labelVw.numberOfLines = 0 //in order to not make the default 1 line
        labelVw.font = .systemFont(ofSize: 18, weight: .bold)
        labelVw.textColor = .white
        return labelVw
    }()
    
    private lazy var jobLabelVw: UILabel = {
       let labelVw = UILabel()
        labelVw.translatesAutoresizingMaskIntoConstraints = false
        labelVw.numberOfLines = 0 //in order to not make the default 1 line
        labelVw.font = .systemFont(ofSize: 10, weight: .light)
        labelVw.textColor = .white
        return labelVw
    }()
    
    private lazy var foundedLabelVw: UILabel = {
       let labelVw = UILabel()
        labelVw.translatesAutoresizingMaskIntoConstraints = false
        labelVw.numberOfLines = 0 //in order to not make the default 1 line
        labelVw.font = .systemFont(ofSize: 12, weight: .light)
        labelVw.textColor = .white
        return labelVw
    }()
    
    private lazy var infoLabelVw: UILabel = {
       let labelVw = UILabel()
        labelVw.translatesAutoresizingMaskIntoConstraints = false
        labelVw.numberOfLines = 10 //in order to not make the default 1 line
        labelVw.font = .systemFont(ofSize: 12, weight: .medium)
        labelVw.textColor = .white
        return labelVw
    }()
    
    // We have all our UI set up
    
    
    func configure() {
        containerVw.backgroundColor = TeamType.arsenal.background
        
        nameLabelVw.text = "Arsenal"
        foundedLabelVw.text = "1800"
        jobLabelVw.text = "Cureent Maneger: Mikel Arteta"
        infoLabelVw.text = "Lorem ipsom hejuy jhsksh hiefygfiefg ifgeigfeiye. oufheou shksfskfh ckshgskc kshgvskhc skhfgskc skhvskc skhvs kc."
        
        self.contentView.addSubview(containerVw)
        
        containerVw.addSubview(contentStackVw)
        containerVw.addSubview(badgeImgVw)
        containerVw.addSubview(playBackButton)
        
        contentStackVw.addArrangedSubview(nameLabelVw)
        contentStackVw.addArrangedSubview(foundedLabelVw)
        contentStackVw.addArrangedSubview(jobLabelVw)
        contentStackVw.addArrangedSubview(infoLabelVw)
        
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            
            badgeImgVw.heightAnchor.constraint(equalToConstant: 50),
            badgeImgVw.widthAnchor.constraint(equalToConstant: 50),
            badgeImgVw.topAnchor.constraint(equalTo: contentStackVw.topAnchor),
            badgeImgVw.leadingAnchor.constraint(equalTo: contentStackVw.leadingAnchor, constant: 8),
            
            contentStackVw.topAnchor.constraint(equalTo: containerVw.topAnchor, constant: 16),
            contentStackVw.bottomAnchor.constraint(equalTo: containerVw.bottomAnchor, constant: -16),
            contentStackVw.leadingAnchor.constraint(equalTo: badgeImgVw.trailingAnchor, constant: 8),
            contentStackVw.trailingAnchor.constraint(equalTo: playBackButton.leadingAnchor, constant: -8),
            
            playBackButton.heightAnchor.constraint(equalToConstant: 44),
            playBackButton.widthAnchor.constraint(equalToConstant: 44),
            playBackButton.trailingAnchor.constraint(equalTo: containerVw.trailingAnchor, constant: -8),
<<<<<<< HEAD

            
            
=======
            playBackButton.centerYAnchor.constraint(equalTo: containerVw.centerYAnchor),
>>>>>>> dev
        ])
        
    }
    
}
