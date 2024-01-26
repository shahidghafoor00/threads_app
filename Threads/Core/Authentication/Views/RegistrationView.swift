//
//  RegistrationView.swift
//  Threads
//
//  Created by Shahid Ghafoor on 19/12/2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var email     = ""
    @State private var password  = ""
    @State private var username  = ""
    @State private var fullName  = ""
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "sunglasses.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .foregroundColor(colorScheme == .dark ? .white: .black)
                .padding()
            
            VStack {
                TextField("Email", text: $email)
                    .modifier(TextFieldModifier())
                
                SecureField("Password", text: $password)
                    .modifier(TextFieldModifier())
                
                TextField("Full Name", text: $fullName)
                    .modifier(TextFieldModifier())
                
                TextField("username", text: $username)
                    .modifier(TextFieldModifier())
                
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .modifier(ButtonModifier())
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack (spacing: 3) {
                        Text("Already have an account?")
                        Text("Sing In")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .font(.footnote)
                }
                
                .padding(.vertical, 16)
                
            }
        }
    }
}

#Preview {
    RegistrationView()
}
