//
//  ContentView.swift
//  GuideBook
//
//  Created by Mark Bergeson on 3/1/24.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false) {
                VStack {
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20.0)
                        }

                    }
                }
            }
            .padding(.horizontal)
            
            }
        .ignoresSafeArea()
        .onAppear {
            cities = dataService.getFileData()
        }
    }
}

#Preview {
    CityView()
}
