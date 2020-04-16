//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   let mainView: UIView = {
         let main = UIView()
         // important when setting contraints programmatically
         main.translatesAutoresizingMaskIntoConstraints = false
         main.backgroundColor = .green
         
         let purpleview: UIView = {
            let view = UIView(frame: CGRect.zero)
             view.backgroundColor = .purple
             view.translatesAutoresizingMaskIntoConstraints = false
            
             return view
         }()
         main.addSubview(purpleview)
         
    NSLayoutConstraint.activate([
         purpleview.bottomAnchor.constraint(equalTo: main.bottomAnchor, constant: -20),
        purpleview.trailingAnchor.constraint(equalTo: main.trailingAnchor, constant: -20),
        purpleview.widthAnchor.constraint(equalTo: main.widthAnchor, multiplier: 0.6),
        purpleview.heightAnchor.constraint(equalToConstant: 60)
         ])

      
         let BV1: UIView = {
             let view = UIView()
             view.backgroundColor = .blue
             view.translatesAutoresizingMaskIntoConstraints = false
              
            
    NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 60),
            view.heightAnchor.constraint(equalToConstant: 60)
             ])
             return view
         }()
    
         let BV2: UIView = {
             let view = UIView()
             view.backgroundColor = .blue
             view.translatesAutoresizingMaskIntoConstraints = false
              
             
    NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 60),
            view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
         }()
    
         let BV3: UIView = {
             let view = UIView()
            view.backgroundColor = .blue
            view.translatesAutoresizingMaskIntoConstraints = false
             
             
    NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 60),
            view.heightAnchor.constraint(equalToConstant: 60)
            ])
            return view
         }()
    
    
         let BlueViews = UIStackView(arrangedSubviews: [BV1, BV2, BV3])
            BlueViews.axis = .vertical
            BlueViews.alignment = .center
            BlueViews.spacing = 20
            BlueViews.distribution = .equalSpacing
            BlueViews.translatesAutoresizingMaskIntoConstraints = false
            main.addSubview(BlueViews)
         
    NSLayoutConstraint.activate([
            BlueViews.centerXAnchor.constraint(equalTo: main.centerXAnchor),
            BlueViews.centerYAnchor.constraint(equalTo: main.centerYAnchor),
            BlueViews.topAnchor.constraint(equalTo: main.topAnchor, constant: 60),
            BlueViews.bottomAnchor.constraint(equalTo: main.bottomAnchor, constant: -110),
         
         ])
         
        
        let redLine: UIView = {
             let view = UIView()
             view.backgroundColor = .red
             view.translatesAutoresizingMaskIntoConstraints = false
            
    NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 180),
            view.heightAnchor.constraint(equalToConstant: 50)
             ])
            
              

        let OV1: UIView = {
        let Ov1view = UIView(frame: CGRect.zero)
            Ov1view.backgroundColor = .orange
            Ov1view.translatesAutoresizingMaskIntoConstraints = false
                
    NSLayoutConstraint.activate([
            Ov1view.heightAnchor.constraint(equalToConstant: 50),
            Ov1view.widthAnchor.constraint(equalToConstant: 90)
            ])
            return Ov1view
            }()
            
            
        let OV2: UIView = {
        let Ov2view = UIView(frame: CGRect.zero)
            Ov2view.backgroundColor = .orange
            Ov2view.translatesAutoresizingMaskIntoConstraints = false
                                
    NSLayoutConstraint.activate([
            Ov2view.heightAnchor.constraint(equalToConstant: 50),
            Ov2view.widthAnchor.constraint(equalToConstant: 90)
            ])
            return Ov2view
            }()
            
        let OrangeView = UIStackView(arrangedSubviews: [OV1, OV2])
             OrangeView.axis = .horizontal
             OrangeView.alignment = .center
             OrangeView.distribution = .fill
             OrangeView.spacing = 4
             OrangeView.translatesAutoresizingMaskIntoConstraints = false
             view.addSubview(OrangeView)
   
    NSLayoutConstraint.activate([
            OrangeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            OrangeView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            OrangeView.heightAnchor.constraint(equalTo: view.heightAnchor),
            OrangeView.widthAnchor.constraint(equalToConstant: 150),
        
             ])
             return view
         }()

        main.addSubview(redLine)
        return main
     }()
  
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
    
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

