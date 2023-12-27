//
//  RegistrationView.swift
//  Threads
//
//  Created by Shahid Ghafoor on 19/12/2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email     = ""
    @State private var password  = ""
    @State private var username  = ""
    @State private var fullname  = ""
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "sunglasses.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .foregroundColor(.black)
                .padding()
            
            VStack {
                TextField("Email", text: $email)
                    .modifier(TextFieldModifier())
                
                SecureField("Password", text: $password)
                    .modifier(TextFieldModifier())
                
                TextField("Full Name", text: $fullname)
                    .modifier(TextFieldModifier())
                
                TextField("username", text: $username)
                    .modifier(TextFieldModifier())
                
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .clipShape(.capsule)
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
                    .foregroundColor(.black)
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
