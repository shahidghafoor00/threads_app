//
//  LoginView.swift
//  Threads
//
//  Created by Shahid Ghafoor on 19/12/2023.
//

import SwiftUI

struct LoginView: View {
    
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
                    .foregroundColor(.black)
                    .padding()
                
                VStack {
                    TextField("Email", text: $email)
                        .autocapitalization(.none)
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
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .clipShape(.capsule)
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
                    .foregroundColor(.black)
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
