//
//  CustomView.swift
//  FlexLayoutSample
//
//  Created by VincentXue on 2018/8/24.
//  Copyright © 2018 Mirego. All rights reserved.
//

import UIKit

final class CustomView: UIView {
  
  var text: String? {
    didSet {
      label.text = text
    }
  }
  
  private let label: UILabel = {
    let label = UILabel()
    label.font = .systemFont(ofSize: 12)
    label.numberOfLines = 0
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    flex.addItem(label)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    flex.layout(mode: .adjustHeight)
  }
}
