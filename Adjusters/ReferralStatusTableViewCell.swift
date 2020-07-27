//
//  ReferralStatusTableViewCell.swift
//  Adjusters
//
//  Created by Venkat on 22/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct ReferralStatusTableViewCell: View {
    
    var details: ReferralStatusDetails!
    var body: some View {
        HStack{
            VStack{
                HStack {
                    
                    ZStack{
                        Text("")
                            .frame(width: 30, height: 30)
                            .background(Color.orange)
                        .cornerRadius(.infinity)

                        Image(systemName: details.imgName)
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    }
                    
                    Text(details.name)
                        .fontWeight(.medium)
                        .font(.system(size: 20))
                    Spacer()
            }
                    HStack{
                        Text("\(details.caseNumber)")
                            .font(.system(size: 27))
                            .fontWeight(.bold)
                        Text("Cases")
                            .padding(.init(top: 0, leading: -7, bottom: 0, trailing: 0))
                        Spacer()
                    }
                    
            }
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        
    //.background(Color("cellBack"))
    }
}
