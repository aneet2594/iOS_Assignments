//
//  Emoji.swift
//  TableView
//
//  Created by Aneet Kaur on 18/08/25.
//

import Foundation

struct Emoji {
    let name: String
    let symbol: String
    var description: String
    var usage: String
}

var emojis: [Emoji] = [
        Emoji(name: "Grinning Face", symbol: "😀", description: "A typical smiley face.", usage: "happiness"),
            Emoji(name: "Confused Face", symbol: "😕", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
        Emoji(name: "Heart Eyes", symbol: "😍", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
        Emoji(name: "Developer", symbol: "🧑‍💻", description: "A person working on a MacBook (probably using Xcode to write iOS apps in Swift).", usage: "apps, software, programming"),
        Emoji(name: "Turtle", symbol: "🐢", description: "A cute turtle.", usage: "something slow"),
        Emoji(name: "Elephant", symbol: "🐘", description: "A gray elephant.", usage: "good memory"),
        Emoji(name: "Spaghetti", symbol: "🍝", description: "A plate of spaghetti.", usage: "spaghetti"),
        Emoji(name: "Die", symbol: "🎲", description: "A single die.", usage: "taking a risk, chance; game"),
        Emoji(name: "Tent", symbol: "⛺️", description: "A small tent.", usage: "camping"),
        Emoji(name: "Stack of Books", symbol: "📚", description: "Three colored books stacked on each other.", usage: "homework, studying"),
        Emoji(name: "Broken Heart", symbol: "💔", description: "A red, broken heart.", usage: "extreme sadness"),
        Emoji(name: "Snore", symbol: "💤", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
        Emoji(name: "Checkered Flag", symbol: "🏁", description: "A black-and-white checkered flag.", usage: "completion")
        ]
