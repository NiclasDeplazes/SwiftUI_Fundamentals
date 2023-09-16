//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Niclas on 16.09.23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingModally: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingModally = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingModally: .constant(false))
    }
}
