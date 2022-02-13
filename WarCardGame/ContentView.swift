//
//  ContentView.swift
//  WarCardGame
//
//  Created by Ravi Kiran Reddy on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card3"
    @State private var cpuCard = "card6"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    //print("You clicked the Deal Button")
                    
                    let playerRandNum = Int.random(in: 2...14)
                    let cpuRandNum = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRandNum)
                    cpuCard = "card" + String(cpuRandNum)
                    
                    if(playerRandNum > cpuRandNum)
                    {
                        playerScore += 1
                    }
                    else if (cpuRandNum > playerRandNum)
                    {
                        cpuScore += 1
                    }
                }) {
                    Image("dealbutton")
                }
                //Image("dealbutton")
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
