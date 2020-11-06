//
//  RowLocation.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 06.11.2020.
//

import SwiftUI

struct RowLocation: View {
    let location: ClimbingLocation
    
    var body: some View {
        
            GeometryReader { geometry in
            ZStack {
                
                    Image(location.imageLocation)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: 140)
                    Text(location.name)
                
            }
            }
        
    }
}

struct RowLocation_Previews: PreviewProvider {
    static var previews: some View {
        RowLocation(location: data[0])
    }
}
