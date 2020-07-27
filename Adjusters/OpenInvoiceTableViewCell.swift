//
//  OpenInvoiceTableViewCell.swift
//  Adjusters
//
//  Created by Venkat on 22/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct OpenInvoiceTableViewCell: View {
var body: some View {
    HStack{
        Text("Show Open Invoices")
            .foregroundColor(.orange)
        .font(.system(size: 22))
        .fontWeight(.semibold)

        Spacer()
        Text("$9821")
            .fontWeight(.bold)
            .font(.system(size: 25))
            .frame(width: 100, height: 50, alignment: .trailing)
        
        Image(systemName: "chevron.right")
        .foregroundColor(.gray)
    }
    //.background(Color.red)
    }
}

