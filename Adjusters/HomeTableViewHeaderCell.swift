//
//  HomeTableViewHeader.swift
//  Adjusters
//
//  Created by Venkat on 20/07/20.
//  Copyright © 2020 Venkat. All rights reserved.
//

import Foundation
import SwiftUI

struct HomeTableViewHeaderCell: View {
  @State  var showDetails:Bool = false
    
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
        
        HStack{
            Text("Referral Status Tracker")
            .font(.system(size: 25))
                .fontWeight(.semibold)

            Spacer()

            Button(action: {
                print("Edit action")
            }, label: {
                Text("Edit")
                    .foregroundColor(Color("buttonBackColor"))
                    .font(.system(size: 20))
                })
            }
            .background(Color("backColor"))

        }
        .background(Color("backColor"))

    }
    
}
