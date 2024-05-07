//
//  Tab.swift
//  btightsky
//
//  Created by Иван Долголаптев on 6.05.24.
//

import UIKit

final class  CurrentWeatherView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
