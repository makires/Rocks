//
//  ContentView.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 29.10.2020.
//

import SwiftUI
let data: [ClimbingLocation] = Bundle.main.decode("gesh.json")
// это данные которые мы будем передавать второму вью
struct ContentView: View {
 
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
            ForEach(data) { location in
                
                NavigationLink(destination:
                    ListCrags(crags: location.crags, location: location) ) {
                RowLocation(location: location)
                }
                
            }
            .navigationBarTitle("Climbing Gesh")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
  
    static var previews: some View {
        ContentView()
    }
}


