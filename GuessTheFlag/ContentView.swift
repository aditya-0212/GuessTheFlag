//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by APPLE on 12/04/24.
//

import SwiftUI

struct FlagImage: View {
    
    var countryName: String
    
    var body: some View {
       Image(countryName)
            .clipShape(.capsule)
            .shadow(radius:5)
    }
}

struct ContentView: View {
  @State  var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
   @State var correctAnswer = Int.random(in: 0...2)
    @State var count = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var msg = " "
    @State private var ques = 1
    var body: some View {
        ZStack{
            RadialGradient(stops:[
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                   .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ],center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack
            {
                Spacer()
                Text("Guess the Flag question no. \(ques)")
                        .font(.largeTitle.weight(.bold))
                        .foregroundStyle(.white)
                VStack(spacing:15) {
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                        
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3){ number in
                        Button {
                            //button is tapped
                            flagTapped(number)
                        } label: {
//                            Image(countries[number])
//                                .clipShape(.capsule)
//                                .shadow(radius: 5)
                            FlagImage(countryName: countries[number])
                            
                        }
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(count)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue",action: askQuestion)
        } message: {
            if ques == 8 {
                Text("final score is =  \(count)")
            }
            else if msg == " "{
                Text("this is right,your score is \(count)")
            }
            else{
                Text("\(msg) and score is \(count)")
              
            }
           
        }
    }
    
    func flagTapped(_ number:Int){
        if number == correctAnswer{
            scoreTitle = "Correct"
            count = count + 1
            msg = " "
            if ques == 8{
                count = 0
                ques = 1
            }
            else{
                
                ques = ques + 1
                
            }
        }
        else{
            scoreTitle = "Wrong"
            msg = "Wrong! That’s the flag of \(countries[number])"
            count = count - 1
            if ques == 8{
                count = 0
                ques = 1
            }else{
                
                ques = ques + 1
                
            }
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
