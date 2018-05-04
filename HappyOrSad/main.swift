//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var hapiFes = 0
var sadFes = 0
var input = ("")

//Continue until valid input is found

while 2 == 2 {

    // Collect input via readLine()
    // and
    // Test #1: Make sure the input was given (create a String from the String?)
    guard let givenInput = readLine() else {
        //ERROR
        continue
    }

    //Stop the program if there was invalid input
    if givenInput.count < 1 || givenInput.count > 255 {
        print("Please enter a string with at least 1 and no more than 255 characters.")
        continue
    }

    //Input is acceptable
    input = givenInput
    break

}
// Print out the input provided
print("You said:")
print(input) //non optional String

//Process - inspect each character
for individualCharacter in input {
    
    //aDebug
    print(individualCharacter)
    
    // Categorize the character
    if individualCharacter == "😃" || individualCharacter == "😊" || individualCharacter == "😀" || individualCharacter == "😄" || individualCharacter == "🙂"  {
        //Add a happy
        hapiFes += 1
    } else if individualCharacter == "☹️" || individualCharacter == "😔" || individualCharacter == "😟" || individualCharacter == "🙁" || individualCharacter == "☹️" || individualCharacter == "😢" || individualCharacter == "😕"{
        //Add a sadboye
        sadFes += 1
    }
}

//Output
//If no emoji, print no
if hapiFes == 0 && sadFes == 0 {
    print("none")
//If same number of happy as sad emojis, print unsure
} else if hapiFes == sadFes {
    print("unsure")
//If more happy than sad, print happy
} else if hapiFes > sadFes {
    print("Happy")
//else, there will be more sad, so print sad
} else {
    print("Sad")
}





