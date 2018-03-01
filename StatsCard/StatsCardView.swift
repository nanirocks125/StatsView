//
//  StatsCardView.swift
//  StatsCard
//
//  Created by Pratian IOS on 28/02/18.
//  Copyright © 2018 Pratian Technologies. All rights reserved.
//

import UIKit

public class StatsCardView: UIView {

    @IBOutlet var statsCardView: UIView!
    
   
    
    public var delegate:StatsCardViewDataSource?
    
   
    
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card2Label: UILabel!
    @IBOutlet weak var card3Label: UILabel!
    @IBOutlet weak var card4Label: UILabel!
    
    
    @IBOutlet weak var card1Count: UILabel!
    @IBOutlet weak var card2Count: UILabel!
    @IBOutlet weak var card3Count: UILabel!
    @IBOutlet weak var card4Count: UILabel!
    
    @IBOutlet weak var card1Amount: UILabel!
    @IBOutlet weak var card2Amount: UILabel!
    @IBOutlet weak var card3Amount: UILabel!
    @IBOutlet weak var card4Amount: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        statsCardView = loadViewFromNib()
        statsCardView.frame = bounds
        statsCardView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(statsCardView)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "StatsCard", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    
    
    public func updateStats(){
        
        if let stats = delegate?.statValues(){
        
        card1Label.text = stats[0].label
        card1Count.text = stats[0].count
        card1Amount.text = stats[0].amount
        
        card2Label.text = stats[1].label
        card2Count.text = stats[1].count
        card2Amount.text = stats[1].amount

        card3Label.text = stats[2].label
        card3Count.text = stats[2].count
        card3Amount.text = stats[2].amount

        card4Label.text = stats[3].label
        card4Count.text = stats[3].count
        card4Amount.text = stats[3].amount
        }
        
    }
    
    
   
    
}
