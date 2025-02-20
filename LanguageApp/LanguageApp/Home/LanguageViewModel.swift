//
//  LanguageViewModel.swift
//  LanguageApp
//
//  Created by Pallavi on 19.02.25.
//

import SwiftUI

class LanguageViewModel: ObservableObject // ViewModel
{
  @Published  var language: [Language] = [
        Language(name: "German", flag: "🇩🇪"),
        Language(name: "Spanish", flag: "🇪🇸"),
        Language(name: "Portuguese", flag: "🇧🇷"),
        Language(name: "French", flag: "🇫🇷"),
        Language(name: "English", flag: "🇬🇧"),
        Language(name: "Italian", flag: "🇮🇹"),
        Language(name: "Russian", flag: "🇷🇺"),
        Language(name: "Polish", flag: "🇵🇱"),
        Language(name: "Turkish", flag: "🇹🇷")
    ]
}
