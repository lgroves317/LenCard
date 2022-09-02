//
//  Infoview.swift
//  LenCard
//
//  Created by Leonard Groves on 8/30/22.
//

import SwiftUI

struct Infoview: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        Capsule()
            .fill(.white)
            .frame(width: 400, height: 50, alignment: .center)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.04, green: 0.52, blue: 0.89, opacity: 1.0))
                Text(text)
            })
    }
}

struct Infoview_Previews: PreviewProvider {
    static var previews: some View {
        Infoview(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
