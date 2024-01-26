//
//  LoginView.swift
//  Threads
//
//  Created by Shahid Ghafoor on 19/12/2023.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var email = ""
    @State private var password  = ""
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image(systemName: "sunglasses.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
                    .padding()
                
                VStack {
                    TextField("Email", text: $email, prompt: Text("Required"))
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .modifier(TextFieldModifier())
                    
                    
                    SecureField("Password", text: $password)
                        .modifier(TextFieldModifier())
                }
                
                NavigationLink {
                    Text("Forgot Password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    print($email, $password)
                } label: {
                    Text("Login")
                        .modifier(ButtonModifier())
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack (spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sing Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .font(.footnote)
                    .padding(.vertical, 16)
                    
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
