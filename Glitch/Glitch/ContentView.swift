//
//  ContentView.swift
//  Glitch
//
//  Created by StudentAM on 4/25/24.
//

import SwiftUI

struct account {
    var user: String = ""
    var pass: String = ""
}
struct ContentView: View {
    @State var users: [account] = []
    @State var user = account()
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                VStack {
                    Text("Glitch")
                        .font(.custom("RubikGlitch-Regular", size: 50))
                        .fontWeight(.black)
                        .padding(.bottom, 42)
                        .foregroundColor(.white)
                    VStack(spacing: 16.0) {
                        InputFieldView(data: $user.user, title: "Username")
                        InputFieldView(data: $user.pass, title: "Password")
                    }.padding(.bottom, 16)
                    Button(action: {
                        users = [user]
                    }) {
                        Text("Sign In")
                                .fontWeight(.heavy)
                                .font(.title3)
                                .frame(maxWidth: .infinity)
                                .padding()                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(40)
                            }
                }.padding()
                
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    ContentView()
}
