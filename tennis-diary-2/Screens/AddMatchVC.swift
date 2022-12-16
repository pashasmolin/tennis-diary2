//
//  AddMatchVC.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/14/22.
//

import UIKit

class AddMatchVC: UIViewController {
    
    var player1TextField: UITextField = {
        var textField = UITextField.init()
        textField.text = ""
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var player2TextField: UITextField = {
        var textField = UITextField.init()
        textField.text = ""
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var scoreTextField: UITextField = {
        var textField = UITextField.init()
        textField.text = ""
        textField.textAlignment = .center
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews(){
        
    }
    
    func setupConstraints(){
        
    }
}
