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
            
            ScrollView {
                VStack {
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            Text(city.name)
                        }

                    }
                }
            }
            .padding()
            
            }
        .onAppear {
            cities = dataService.getData()
        }
    }
}

#Preview {
    CityView()
}
