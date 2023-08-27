//
//  ViewController.swift
//  CuurencyConverterApp
//
//  Created by Ярослав Вербило on 2023-05-07.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let mainTextField = UITextField()
    let labelName1 = UILabel()
    let labelName2 = UILabel()
    let labelName3 = UILabel()
    let labelName4 = UILabel()
    let labelName5 = UILabel()
    let labelName6 = UILabel()
    let labelName7 = UILabel()
    
    let labelAnount1 = UILabel()
    let labelAnount2 = UILabel()
    let labelAnount3 = UILabel()
    let labelAnount4 = UILabel()
    let labelAnount5 = UILabel()
    let labelAnount6 = UILabel()
    let labelAnount7 = UILabel()
    

    var formatter = CurrencyFormatter()
    var ukrformatter = CurrencyFormatter()
    var chiformatter = CurrencyFormatter()
    var usaformatter = CurrencyFormatter()
    var fraformatter = CurrencyFormatter()
    var polformatter = CurrencyFormatter()
    var albformatter = CurrencyFormatter()
    var indformatter = CurrencyFormatter()





    override func viewDidLoad() {
        super.viewDidLoad()
        
        [labelName1, labelName2, labelName3, labelName4, labelName5, labelName6, labelName7, mainTextField, labelAnount1, labelAnount2, labelAnount3, labelAnount4, labelAnount5, labelAnount6, labelAnount7].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            
            mainTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            mainTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            mainTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelName1.topAnchor.constraint(equalTo: mainTextField.topAnchor, constant: 64),
            labelName1.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            labelName1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelAnount1.topAnchor.constraint(equalTo: mainTextField.topAnchor, constant: 64),
            labelAnount1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelAnount1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            
            labelName2.topAnchor.constraint(equalTo: labelName1.topAnchor, constant: 48),
            labelName2.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            labelName2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelAnount2.topAnchor.constraint(equalTo: labelName1.topAnchor, constant: 48),
            labelAnount2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelAnount2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            
            labelName3.topAnchor.constraint(equalTo: labelName2.topAnchor, constant: 48),
            labelName3.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            labelName3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelAnount3.topAnchor.constraint(equalTo: labelName2.topAnchor, constant: 48),
            labelAnount3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelAnount3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            
            labelName4.topAnchor.constraint(equalTo: labelName3.topAnchor, constant: 48),
            labelName4.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            labelName4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelAnount4.topAnchor.constraint(equalTo: labelName3.topAnchor, constant: 48),
            labelAnount4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelAnount4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            
            labelName5.topAnchor.constraint(equalTo: labelName4.topAnchor, constant: 48),
            labelName5.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            labelName5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelAnount5.topAnchor.constraint(equalTo: labelName4.topAnchor, constant: 48),
            labelAnount5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelAnount5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),

            labelName6.topAnchor.constraint(equalTo: labelName5.topAnchor, constant: 48),
            labelName6.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            labelName6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelAnount6.topAnchor.constraint(equalTo: labelName5.topAnchor, constant: 48),
            labelAnount6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelAnount6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            
            labelName7.topAnchor.constraint(equalTo: labelName6.topAnchor, constant: 48),
            labelName7.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            labelName7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            labelAnount7.topAnchor.constraint(equalTo: labelName6.topAnchor, constant: 48),
            labelAnount7.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelAnount7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            
            
        
        ])
        
        mainTextField.font = UIFont.systemFont(ofSize: 30)
        mainTextField.placeholder = "Enter amount (CAD)"
        mainTextField.textAlignment = .center
        mainTextField.keyboardType = .decimalPad
        mainTextField.borderStyle = .none
        mainTextField.layer.borderWidth = 3
        mainTextField.layer.borderColor = UIColor.green.cgColor
        mainTextField.layer.cornerRadius = 20
        //mainTextField.delegate = self
        
        mainTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        
        labelName1.text = "Ukraine"
        labelName2.text = "China"
        labelName3.text = "USA"
        labelName4.text = "France"
        labelName5.text = "Poland"
        labelName6.text = "Albania"
        labelName7.text = "India"
        [labelName1, labelName2, labelName3, labelName4, labelName5, labelName6, labelName7].forEach {
            $0.font = UIFont.systemFont(ofSize: 30)
        }
        [labelAnount1, labelAnount2, labelAnount3, labelAnount4, labelAnount5, labelAnount6, labelAnount7].forEach{
            $0.textAlignment = .right
            $0.font = UIFont.systemFont(ofSize: 25)
        }
        labelAnount1.text = "0"
        labelAnount2.text = "0"
        labelAnount3.text = "0"
        labelAnount4.text = "0"
        labelAnount5.text = "0"
        labelAnount6.text = "0"
        labelAnount7.text = "0"

        
        ukrformatter.configurete(numberStyle: .currencyISOCode, localId: .ukraine)
        chiformatter.configurete(numberStyle: .currencyISOCode, localId: .china)
        usaformatter.configurete(numberStyle: .currencyISOCode, localId: .usa)
        fraformatter.configurete(numberStyle: .currencyISOCode, localId: .france)
        polformatter.configurete(numberStyle: .currencyISOCode, localId: .poland)
        albformatter.configurete(numberStyle: .currencyISOCode, localId: .albania)
        indformatter.configurete(numberStyle: .currencyISOCode, localId: .india)
        
        
        


    }

    @objc func textDidChange() {
        guard let number = Double(mainTextField.text ?? "0") else { return
            [labelAnount1, labelAnount2, labelAnount3, labelAnount4, labelAnount5, labelAnount6, labelAnount7].forEach{
            $0.text = "0"
        }}
        
        labelAnount1.text = ukrformatter.string(from: number * 27.6)
        labelAnount2.text = chiformatter.string(from: number * 5.16)
        labelAnount3.text = usaformatter.string(from: number * 0.75)
        labelAnount4.text = fraformatter.string(from: number * 0.68)
        labelAnount5.text = polformatter.string(from: number * 3.10)
        labelAnount6.text = albformatter.string(from: number * 75.70)
        labelAnount7.text = indformatter.string(from: number * 61.09)
       
    }
    

}

