//
//  RowCrag.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 29.10.2020.
//

import SwiftUI

struct RowCrag: View {
    let crag: ClimbingLocation.Crags
    
    var body: some View {
        HStack {
            Text(crag.cragName)
            
        }
        
    }
}

struct RowCrag_Previews: PreviewProvider {
    
    static var previews: some View {
        RowCrag(crag: data[0].crags[0])
    }
}
