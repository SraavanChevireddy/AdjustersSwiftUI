//
//  ReferralSubmissionsTableViewCell.swift
//  Adjusters
//
//  Created by Venkat on 22/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct ReferralSubmissionsTableViewCell: View {
var body: some View {
    VStack{
        HStack{
            Text("Referral Submissions")
                .fontWeight(.semibold)
                .font(.system(size: 25))
            
            Spacer()
            Image(systemName: "chevron.right")
            .foregroundColor(.gray)
        }
        HStack{
            VStack{
                HStack{
                    Text("55%")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        //.frame(width: 35, height: 35, alignment: .center)

                    Image(systemName: "arrow.up.circle.fill")
                            .resizable()
                            .frame(width: 23, height: 23)
                            .foregroundColor(.orange)
                    Spacer()
                }
                HStack{
                    Text("From last month")
                    .font(.system(size: 12))
                    Spacer()
                }
                Spacer()
            }
            Image("graph")
        }
        
            Divider()
                .foregroundColor(.gray)
                .padding(.init(top: 10, leading: 5, bottom: 5, trailing: 5))
        HStack(alignment: .top, spacing: 20){
            Text("")
                .frame(width: 30, height: 20, alignment: .leading)
            Text("You have highest referral submissions in April of 321. Your lowest number of submissions are from Jan of 41. Tap to view more details")
                       .font(.system(size: 14))
                       .multilineTextAlignment(.trailing)
        }
    }
    }
}
