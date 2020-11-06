//
//  ListRoutes.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 05.11.2020.
//

import SwiftUI

struct ListRoutes: View {
    var routes = [Route]()
    let crag: Crag
    
    var body: some View {
        VStack {
        Text("Фото скалы")
        Text("С разметкой трасс")
        List(routes) { route in
            RowRoute(route: route)
        }
    }
        .navigationBarTitle(crag.cragName, displayMode: .inline)
    }
}

struct ListRoutes_Previews: PreviewProvider {
    static var previews: some View {
        ListRoutes(routes: data[0].crags[0].routes, crag: data[0].crags[0])
    }
}
