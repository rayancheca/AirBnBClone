//
//  ProfileView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import SwiftUI

struct ProfileView: View 
{
    var body: some View 
    {
        VStack 
        {
            // profile login view
            VStack(alignment: .leading, spacing: 32)
            {
                VStack(alignment: .leading, spacing: 8)
                {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                } // end vstack
     
                Button{
                    print("log in")
                } label:{
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                HStack
                {
                    Text("Dont have an account? ")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                } // end hstack
                .font(.caption)
        }
            
            // profile options
            VStack(spacing: 24)
            {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        } // end vstack
        .padding()
    } // end body
} // end struct

#Preview {
    ProfileView()
}
