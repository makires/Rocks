//
//  RowCrag.swift
//  Rocks
//
//  Created by Tatiana Ilvutikova on 05.11.2020.
//

import SwiftUI

struct RowCrag: View {
    let crag: Crag
    
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
