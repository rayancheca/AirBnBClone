//
//  ExploreView.swift
//  ab&b
//
//  Created by Rayan Karim checa on 7/14/24.
//

import SwiftUI

struct ExploreView: View 
{
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View
    {
        NavigationStack
        {
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView,
                                      viewModel: viewModel)
            } else {
                ScrollView
                {
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32)
                    {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing)
                            {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            } // end navigation link
                        } // end for loop
                    } // end lazy vstack
                    .padding()
                } // end scrollview
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        } // end navigation stack
    } // end body
} // end struct

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
