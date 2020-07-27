//
//  FrequentlyUsedServicesCell.swift
//  Adjusters
//
//  Created by Venkat on 22/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct FrequentlyUsedServicesCell: View {
    var servicesName:String!
var body: some View {
    HStack{
        Text(servicesName)
            .fontWeight(.semibold)
            .font(.system(size: 20))
            .foregroundColor(.orange)
            .frame(height: 40, alignment: .leading)
        Spacer()
        Image(systemName: "chevron.right")
        .foregroundColor(.gray)
    }
    }
}
