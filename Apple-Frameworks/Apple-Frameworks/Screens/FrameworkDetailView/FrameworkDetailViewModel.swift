//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Niclas on 26.09.23.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self._isShowingDetailView = isShowingDetailView
    }
}
