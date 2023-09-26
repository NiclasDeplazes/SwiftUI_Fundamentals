//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Niclas on 16.09.23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingModally: $viewModel.isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}
