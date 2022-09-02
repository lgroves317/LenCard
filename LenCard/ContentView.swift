//
//  ContentView.swift
//  LenCard
//
//  Created by Leonard Groves on 8/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.04, green: 0.52, blue: 0.89, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("boston")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Leonard Groves")
                    .font(Font.custom("Lora-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                Infoview(text: "(203) 815-6051", imageName: "phone.fill")
            }
            .padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}


