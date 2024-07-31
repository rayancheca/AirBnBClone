//
//  WishlistView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/17/24.
//

import SwiftUI

struct WishlistView: View 
{
    var body: some View 
    {
        NavigationStack
        {
            VStack(alignment: .leading, spacing :32)
            {
                VStack(alignment: .leading, spacing :4)
                {
                    Text("Log in to view your wishlosts")
                        .font(.subheadline)
                    
                    Text("You can create, view or edit wishlists once you have logged in")
                        .font(.footnote)
                    
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
                    
                } // end vstack
                
                Spacer()
                
            } // end vstack
            .padding()
            .navigationTitle("Wishlists")
        } // end navigationstack
    } // end body
} // end struct

#Preview {
    WishlistView()
}
