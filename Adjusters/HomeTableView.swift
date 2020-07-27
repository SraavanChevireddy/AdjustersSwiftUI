//
//  HomeTableView.swift
//  Adjusters
//
//  Created by Venkat on 22/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct HomeTableView: View {
    let ary_referralStatus =  [ReferralStatusDetails(name: "Awaiting Scheduling", imgName: "waveform.path", caseNumber: 115),ReferralStatusDetails(name: "Awaiting Medical Record", imgName: "star.fill", caseNumber: 50),ReferralStatusDetails(name: "Completed (last 10 days)", imgName: "staroflife.fill", caseNumber: 115)]
    let ary_serviceNames = ["Workers Comp REVAL","First Party Auto BREV","First Party Auto RREV","First Party Auto RRB"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0){
               // HomeTableViewHeader()
                //    .padding(.init(top: 10, leading: 15, bottom: .zero, trailing: 15))
                
                List(){
                    Section(){
                        HomeTableViewHeaderCell()
                        .padding(.init(top: -7, leading: -20, bottom: -7, trailing: -20))
                        .buttonStyle(PlainButtonStyle())
                    }
                    Section(){
                        
                        ForEach(0..<ary_referralStatus.count) { referralStatus in
                            ReferralStatusTableViewCell(details: self.ary_referralStatus[referralStatus])
                        
                        }
                        
                    }
                    Section(){
                        OpenInvoiceTableViewCell()
                            //.background(Color.green)
                        .cornerRadius(20)
                    }
                    Section(){
                        ZStack {
                                   ReferralSubmissionsTableViewCell()
                                   NavigationLink(destination: ReferralSubmissionsDetailsView()){
                                           EmptyView()
                                   }.buttonStyle(PlainButtonStyle())
                               }
                    }
                    Section(header: Text("Frequently used services").fontWeight(.bold).font(.system(size: 22))){
                        ForEach(0..<ary_serviceNames.count) { services in
                            FrequentlyUsedServicesCell(servicesName: self.ary_serviceNames[services])
                        }
                    }
                    Section(){
                        UpdatesSinceLastLoginCell()
                    }
                }.listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
                Spacer()

            }
            .padding(.init(top: 0, leading: -10, bottom: .zero, trailing: -10))
      .navigationBarTitle("", displayMode: .inline)
                .background(Color("backColor"))

        }
    }
}
