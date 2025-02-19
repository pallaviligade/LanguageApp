//
//  ContentView.swift
//  LanguageApp
//
//  Created by Pallavi on 23.10.24.
//

import SwiftUI



struct LanguageSelectionView: View {
  @StateObject var viewModel = LanguageViewModel() // connect to viewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.2, green: 0.1, blue: 0.3).ignoresSafeArea()
                VStack{
                    Text("Which language would you like to learn?")
                        .font(.title2).foregroundColor(.white).fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), content: {
                        ForEach(allLangages)  { lanuage in
                            LanguageView(language: lanuage)
                        }
                    })
                    .padding()
                    Spacer()
                    
                    Button(action: {
                        print("Continue button tapped")
                    }, label: {
                        Text("Continue")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity,maxHeight: 55)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .padding()
                    })
                }
            }
        }
    }
}


struct LanguageView: View {
    let language: Language
    var body: some View {
        VStack {
            ZStack{
                Circle()
                    .fill(Color(.white))
                    .frame(width: 80, height: 80)
                Text(language.flag)
                    .font(.system(size: 55)) // Increased size to fully fill
                    .shadow(radius: 10)
            }
            Text(language.name)
                .font(.system(size: 19, weight: .semibold))
                .foregroundColor(.white)
        }
        .frame(width: 110, height: 110)
        .padding(8)

    }
}
#Preview {
    LanguageSelectionView()
}
