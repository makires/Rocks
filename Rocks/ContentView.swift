//
//  ContentView.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 29.10.2020.
//

import SwiftUI

let data: [ClimbingLocation] = Bundle.main.decode("gesh.json")

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(data) { location in
                        NavigationLink(destination: List { ForEach(location.crags)
                        { crag in
                            NavigationLink(destination: List { ForEach(crag.routes)
                            { route in
                                RowRoute(route: route) } }
                            ) {
                                RowCrag(crag: crag)
                            }
                        }
                        
                        }
                        
                        ) {
                            Text(location.name)
                            
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Скалы Шерегеша")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
  
    static var previews: some View {
        ContentView()
    }
}
