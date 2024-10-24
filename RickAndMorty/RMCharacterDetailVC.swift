//
//  RMCharacterDetailVC.swift
//  RickAndMorty
//
//  Created by Joana Ferreira on 24/10/2024.
//

import UIKit

/// Controller to show info about single character
class RMCharacterDetailVC: UIViewController {

    private let viewModel: RMCharacterDetailViewViewModel

    private let detailView: RMCharacterDetailView


    init(viewModel: RMCharacterDetailViewViewModel) {
        self.viewModel = viewModel
        self.detailView = RMCharacterDetailView(frame: .zero)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
