//
//  ViewController.swift
//  Tracker
//
//  Created by Владимир Богомолов on 01.09.2023.
//

import UIKit

class ListTrackersViewController: UIViewController {
    let addTrackerButton: UIButton = {
        let button = UIButton.systemButton(
            with: UIImage(named: "Plus")!,
            target: self,
            action: #selector(addTrackerButtonTapped)
        )
        button.tintColor = UIColor.trackerBlack
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.preferredDatePickerStyle = .compact
        picker.datePickerMode = .date
        picker.locale = Locale(identifier: "ru_Ru")
        picker.calendar.firstWeekday = 2
        picker.translatesAutoresizingMaskIntoConstraints = false
        picker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
        return picker
    }()
    
    private let largeTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Трекеры"
        label.textColor = UIColor.trackerBlack
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var searchField: UISearchTextField = {
        let field = UISearchTextField()
        field.text = "Поиск"
        field.backgroundColor = UIColor.trackerSearchField
        field.textColor = UIColor.trackerGray
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let placeholderImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Star")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Что будем отслеживать?"
        label.textColor = UIColor.trackerBlack
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.trackerWhite
        
        view.addSubview(datePicker)
        datePicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 88).isActive = true
        datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        datePicker.layer.cornerRadius = 8
        datePicker.layer.masksToBounds = true
        
        view.addSubview(addTrackerButton)
        addTrackerButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 49).isActive = true
        addTrackerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        view.addSubview(largeTitleLabel)
        largeTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 88).isActive = true
        largeTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        view.addSubview(searchField)
        searchField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        searchField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 136).isActive = true
        searchField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        searchField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        view.addSubview(placeholderImage)
        placeholderImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 402).isActive = true
        placeholderImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 490).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func addTrackerButtonTapped() {
        let newTrackerViewController = NewTrackerViewController()
        present(newTrackerViewController, animated: true, completion: nil)
    }
    
    @objc func dateChanged() {
        
    }
}
