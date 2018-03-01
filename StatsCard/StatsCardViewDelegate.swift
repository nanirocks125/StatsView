//
//  StatsCardViewDelegate.swift
//  StatsCard
//
//  Created by Pratian IOS on 28/02/18.
//  Copyright © 2018 Pratian Technologies. All rights reserved.
//

import Foundation

public protocol StatsCardViewDataSource {
     func statValues() -> [Card]
}
