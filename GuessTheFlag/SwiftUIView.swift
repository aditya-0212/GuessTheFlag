//
//  SwiftUIView.swift
//  GuessTheFlag
//
//  Created by APPLE on 13/04/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    func executionDelete(){
//        print("delete button")
//    }
//    
//    @State private var isShowButton = false
//    var body: some View {
//        ZStack {
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
//
//            Text("Your content")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()
//
        
//        LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
        
//        LinearGradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55)
//        ], startPoint: .top, endPoint: .bottom)
        
//        RadialGradient(colors: [.blue,.black], center: .center, startRadius: 20, endRadius: 200)
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
        
//        Text("Aditya Choubisa")
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .foregroundColor(.white)
//            .background(.indigo.gradient)
        
//        Button("Delete Button",role: .destructive, action:executionDelete)
        
//        VStack {
//            Button("Button 1") { }
//                .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//                .tint(.mint)
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.borderedProminent)
//        }
        
//        Button{} label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundStyle(.white)
//                .background(.red)
//        }
        
//       Image(decorative:"apple")
//        Image(systemName: "pencil.circle")
//            .foregroundStyle(.red)
//            .font(.largeTitle)
        
//        Button{
//            print("Button was tabble")
//        }label: {
//            Image(systemName: "pencil.circle")
//        }
        
//        Button("Edit",systemImage: "pencil"){
//            print("Button was tabble")
//        }
        
//        Button{
//            print("button was tabble")
//        }label: {
//            HStack{
//                Image(systemName: "pencil")
//                Text("Edit")
//            }
//        }
        
        //we have special built in view for lable for this
//        Button{}label: {
//            Label("Edit",systemImage: "pencil")
//                .padding()
//                .foregroundColor(.white)
//                .background(.red)
//        }
        
//        Button("Show alert"){
//            isShowButton = true
//        }
//        .alert("Important messgae",isPresented: $isShowButton)  {
//            Button("ohk"){}
//        }
        
//        Button("Show alert"){
//            isShowButton = true
//        }
//        .alert("Important message",isPresented: $isShowButton){
//            Button("Delete",role: .destructive){}
//            Button("Cancel",role: .cancel){}
//        } message: {
//            Text("please read the message")
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
