//
//  DetailCrag.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 29.10.2020.
//

import SwiftUI

struct RowRoute: View {
    let route: ClimbingLocation.Crags.Route
    
    var body: some View {
        HStack {
            Text(route.name)
            Text(route.grade)
            Text(route.bolts)
        }
    }
}

struct RowRoute_Previews: PreviewProvider {
    static var previews: some View {
        RowRoute(route: data[0].crags[0].routes[0])
    }
}
