//
//  InputFieldView.swift
//  Glitch
//
//  Created by StudentAM on 4/29/24.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var data: String
    var title: String?
    
    var body: some View {
        ZStack {
            TextField("", text: $data)
              .padding(10)
              .frame(height: 42)
              .foregroundColor(.white)
              .overlay(
                RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                    .stroke(Color.gray, lineWidth: 1)
              )
            HStack {                    // HStack for the text
              Text(title ?? "Input")
                .font(.headline)
                .fontWeight(.thin)      // making the text small
                .foregroundColor(Color.white)    // and gray
                .multilineTextAlignment(.leading)
                .padding(2)
              Spacer()                  // pushing the text to the left
            }
            .padding(.leading, 8)
            .offset(CGSize(width: 0, height: -20))  // pushign the text up to overlay the border of the input field
          }.padding(4)
    }
}
