import UIKit

var greeting = "Hello, playground"

struct Note: Codable {
    let title: String
    let text: String
    let timestamp: Date
}


//let newNote = Note(title: "Grocery Run", text: "Pick up mayo, mustard, lettuce, tomatoes and pickles", timestamp: Date())

let notel = Note(title: "Note One", text: "This is a sample note.", timestamp: Date())
let note2 = Note(title: "Note Two", text: "This is another sample note.", timestamp: Date())
let note3 = Note(title: "Note Three", text: "This is yet another sample note.", timestamp: Date())
let notes = [notel, note2, note3]

//let propertyListEncoder = PropertyListEncoder()
//if let encodedNote = try? propertyListEncoder.encode(newNote) {
//    print(encodedNote)
//    
//    let propertyListDecoder = PropertyListDecoder()
//    if let decodedNote = try? propertyListDecoder.decode(Note.self, from: encodedNote) {
//        print(decodedNote)
//    }
//}

let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

print(documentsDirectory)

let archiveURL = documentsDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")

print(archiveURL)


let propertyListEncoder = PropertyListEncoder()
let encodedNote = try? propertyListEncoder.encode(notes)

try? encodedNote?.write(to: archiveURL, options: .noFileProtection)

let propertyListDecoder = PropertyListDecoder()
if let retrievedNoteData = try? Data(contentsOf: archiveURL),
   let decodedNote = try? propertyListDecoder.decode(Array<Note>.self, from: retrievedNoteData) {
    print(decodedNote)
}
