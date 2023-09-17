//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Niclas on 16.09.23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
}
