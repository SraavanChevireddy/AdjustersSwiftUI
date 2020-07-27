//
//  UpdatesSinceLastLoginCell.swift
//  Adjusters
//
//  Created by Venkat on 22/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct UpdatesSinceLastLoginCell: View {
var body: some View {
    VStack{
        HStack{
            Text("Updates since last login")
                .fontWeight(.semibold)
                .font(.system(size: 20))
            Spacer()
            Text("10 Hours ago")
                .font(.system(size: 12))
                .foregroundColor(.gray)
            Image(systemName: "chevron.right")
            .foregroundColor(.gray)
        }
        HStack{
            HStack{
                Text("12")
                    .fontWeight(.semibold)
                    .font(.system(size: 23))
                Text("New Notes")
                    .font(.system(size: 12))
                .padding(.init(top: 7, leading: -5, bottom: .zero, trailing: .zero))
            }
            Spacer()
            HStack{
                Text("24")
                    .fontWeight(.semibold)
                    .font(.system(size: 23))
                Text("New Documents")
                    .font(.system(size: 12))
                .padding(.init(top: 7, leading: -5, bottom: .zero, trailing: .zero))
            }
            
        }.padding(.init(top: 10, leading: 20, bottom: .zero, trailing: .zero))
        HStack{
            Text("48")
                .fontWeight(.semibold)
                .font(.system(size: 23))
            Text("New Referrals")
                .font(.system(size: 12))
            .padding(.init(top: 7, leading: -5, bottom: .zero, trailing: .zero))
            Spacer()
        }.padding(.init(top: 10, leading: 20, bottom: .zero, trailing: .zero))
        
    }
    }
}

