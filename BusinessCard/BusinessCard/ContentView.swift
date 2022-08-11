//
//  ContentView.swift
//  BusinessCard
//
//  Created by Al-Amin on 9/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Al-Amin")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 40))
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+8801943465960", imageName: "phone.fill")
                InfoView(text: "alamin61a@gmail.com", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
