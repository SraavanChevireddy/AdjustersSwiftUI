//
//  ReferralSubmissionsDetailsView.swift
//  Adjusters
//
//  Created by Venkat on 23/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct ReferralSubmissionsDetailsView: View {
    
    var ary_summary = [SummaryData(month: "Jan, 20", amount: "$ 2,586.33", width: 100),SummaryData(month: "Feb, 20", amount: "$ 4,586.00", width: 120),SummaryData(month: "Mar, 20", amount: "$ 8,556.45", width: 140),SummaryData(month: "Apr, 20", amount: "$ 2,586.33", width: 100),SummaryData(month: "May, 20", amount: "$ 3,556.45", width: 125),SummaryData(month: "Jun, 20", amount: "$ 586.33", width: 50)]
    
  var body: some View {
          VStack(alignment: .leading, spacing: 0){
              
              List(){
                  Section(){
                      ReferralSubmissionsDetailsHeader()
                      .padding(.init(top: -7, leading: -20, bottom: -7, trailing: -20))
                      .buttonStyle(PlainButtonStyle())
                  }
                Section(){
                    GraphView()
                }
                Section(header: Text("Summary").fontWeight(.bold).font(.system(size: 22))){
                    ForEach(0..<ary_summary.count) { summary in
                        SummaryTableViewCell(month: self.ary_summary[summary].month, amount: self.ary_summary[summary].amount, width: self.ary_summary[summary].width)
                    }
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

struct ReferralSubmissionsDetailsHeader: View {
    @State  var showDetails:Bool = false
    @State private var favoriteColor = 0

    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Spacer()
                Button(action: {
                    print("Make referral action")
                }, label: {
                  Text("Make Referral")
                    .foregroundColor(.white)
                })
                    .frame(width: 180, height: 40, alignment: .center)
                     .background(Color("buttonBlackColor"))
                    .cornerRadius(20)
                
                Image("ironMan")
                .resizable()
                    .frame(width: 50, height: 50, alignment: .trailing)
                .cornerRadius(25)
            }
        
        Text("Stepahnie, Lizama")
            .fontWeight(.bold)
            .font(.system(size: 30))

        Text("Fishkin & Associates")
            .fontWeight(.regular)
            .font(.system(size: 25))
            .foregroundColor(.gray)
            .padding(.init(top: 5, leading: 0, bottom: 0, trailing: 0))

        HStack{

    if !showDetails{
        Spacer()
        Button(action: {
            self.showDetails.toggle()
            print(self.showDetails)
        }) {
                Text("Open Team Mode")
                .foregroundColor(.black)
                .fontWeight(.bold)
            }

            .frame(width: 200, height: 40, alignment: .center)
             .background(Color("buttonBackColor"))
            .cornerRadius(20)
            }
            if showDetails {
                HStack{
                    Button(action: {
                    }) {
                        VStack(alignment: .leading){
                            Text("Proxying as")
                                .font(.system(size:13.5))
                                .foregroundColor(Color.black)
                            .fontWeight(.semibold)

                            Text("Gowtham Reddy")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                        }
                        }
                    .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color("buttonBackColor"))
                    .cornerRadius(.infinity)

                    Spacer()
                Button(action: {
                    self.showDetails.toggle()
                }) {
                        Text("Exit Team Mode")
                        .foregroundColor(.black)
                        //.fontWeight(.bold)
                    }
            }
            }
        }
        
        ZStack{
            Rectangle()
                .foregroundColor(Color("cellBack"))
            
            Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                Text("D").tag(0)
                Text("W").tag(1)
                Text("M").tag(2)
                Text("Y").tag(3)
            }.pickerStyle(SegmentedPickerStyle())
                .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
        }.padding(.init(top: 10, leading: 5, bottom: 5, trailing: 5))
            .background(Color("backColor"))

        }
        .background(Color("backColor"))

    }
}

struct GraphView: View {
    var body: some View{
        VStack{
            HStack{
                Text("Average")
                    .foregroundColor(.gray)
                Spacer()
            }
            HStack{
                Text("2,345")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                Text("Cases")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                .foregroundColor(.gray)
                    .padding(.init(top: .zero, leading: -5, bottom: 0, trailing: .zero))
                Spacer()
            }
            HStack{
                Text("21 - 27 July 2020")
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                Spacer()
            }
            Image("graph1")
                .resizable()
                 .aspectRatio(contentMode: .fill)
                .padding(.init(top: 5, leading: 5, bottom: 5, trailing: 5))
            
           
        }
    }
}

struct SummaryTableViewCell: View {
    var month:String!
    var amount:String!
    var width:CGFloat!
var body: some View{
    VStack{
        HStack{
            Text(month)
                .fontWeight(.semibold)
                .font(.system(size: 20))
            Spacer()
            Text(amount)
            .fontWeight(.semibold)
            .font(.system(size: 20))
                .foregroundColor(.gray)
        }
        HStack{
            Rectangle()
                .frame(width: width, height: 5, alignment: .leading)
                .foregroundColor(.orange)
                .cornerRadius(.infinity)
            Spacer()
        }
        Spacer()
    }
    }
}

struct ReferralSubmissionsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
       ReferralSubmissionsDetailsView()
    }
}

struct SummaryData {
    var month,amount : String!
    var width:CGFloat!
}
