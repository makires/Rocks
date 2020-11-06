//
//  ListCrags.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 05.11.2020.
//

import SwiftUI

struct ListCrags: View {
    var crags = [Crag]()
    let location: ClimbingLocation
    
    var body: some View {
        VStack {
        Text("Описание района")
        Text("Фото")
        List(crags) { crag in
            NavigationLink(destination: ListRoutes(routes: crag.routes, crag: crag) ) {
                RowCrag(crag: crag)
            }
            
        }
        .navigationBarTitle(location.name, displayMode: .inline)
    }
    }
}

struct ListCrags_Previews: PreviewProvider {
  
    static var previews: some View {
        ListCrags(crags: data[0].crags, location: data[0])
    }
}
