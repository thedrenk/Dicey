//
//  ContentView.swift
//  Dicey
//
//  Created by Kingthed💛💙 💂🏾‍♀️ on 6/26/23.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNum = 1
    @State var rightDiceNum = 1
    var body: some View {
        VStack{
            Text("Diecy")
                .foregroundColor(.cyan)
                .bold()
                .font(.system(size:50))
                .fontWeight(.black)
            Spacer()
            
            Button {
                leftDiceNum = Int.random(in: 1...6)
                rightDiceNum = Int.random(in: 1...6)
            } label: {
                    Text("Roll dice")
                        .font(.title)
                   

              
            }

                Spacer()
            
            HStack {
                Image("dice\(leftDiceNum)")
                    .resizable()
                .frame(width: 200,height: 200)
                
                Image("dice\(rightDiceNum)")
                    .resizable()
                    .frame(width: 200,height: 200)
            }
            .offset(y: -200)
            .padding()
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
