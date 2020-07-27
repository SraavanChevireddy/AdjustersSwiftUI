//
//  CaseSearchView.swift
//  Adjusters
//
//  Created by Venkat on 20/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct CaseSearchView: View {
    
    var navTitle:String!
   let disciplines = ["G", "O", "W","T","H","A","M","","R","E","D","D","Y"]
    var body: some View {
        NavigationView {
      List(disciplines, id: \.self) { discipline in
        Text(discipline)
        
      }
    .navigationBarTitle(navTitle)
        }
    }
}

struct CaseSearchView_Previews: PreviewProvider {
    static var previews: some View {
        CaseSearchView()
    }
}
