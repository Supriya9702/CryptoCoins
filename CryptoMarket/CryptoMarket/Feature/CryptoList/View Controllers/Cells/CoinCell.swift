//
//  CryptoTableViewCell.swift
//  CryptoMarket
//
//  Created by Supriya Gunda on 20/03/24.
//

import UIKit

class CoinCell: UITableViewCell {
    
    static let identifier = "CoinCell"
    
    // MARK: - Variables
    private(set) var coin: Coin!
    
    // MARK: - UI Components
    @IBOutlet weak var coinLogo: UIImageView!
    @IBOutlet weak var coinName: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func configure(with coin: Coin) {
        self.coin = coin
        self.coinName.text = coin.name
        
        if let url = self.coin.logoURL {
            URLSession.shared.dataTask(with: url) { (data, response, error) in

                if let imageData = data {
                    DispatchQueue.main.async { [weak self] in
                        self?.coinLogo.image = UIImage(data: imageData)
                    }
                }
            }.resume()
        }
    }
}
