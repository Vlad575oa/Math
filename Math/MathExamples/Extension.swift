//
//  Extension.swift
//  Math
//
//  Created by user on 30.04.2023.
//

import Foundation
extension Math {
  func answerIsCorrect(answer: Int){
    if answer == correctAnswer {
      self.score += 1
    } else {
      self.score -= 1
    }
  }

  func generateAnswers(){

    switch selectedSign {
    case 0: // addition
      firstNumber = Int.random(in: 1...(difficultyArray[difficulty]/2))
      secondNumber = Int.random(in: 1...(difficultyArray[difficulty]/2))
      var answerList = [Int]()
      correctAnswer = firstNumber + secondNumber
      answerList.append(correctAnswer)

    case 1: // subtraction
      firstNumber = Int.random(in: 1...(difficultyArray[difficulty]/2))
      secondNumber = Int.random(in: 1...firstNumber) // second number must be less than or equal to the first number
      var answerList = [Int]()
      correctAnswer = firstNumber - secondNumber

      answerList.append(correctAnswer)

    case 2: // multiplication
      firstNumber = Int.random(in: 1...(difficultyArray[difficulty]/2)) // limit first number to make it easier
      secondNumber = Int.random(in: 1...10)
      var answerList = [Int]()
      correctAnswer = firstNumber * secondNumber
      answerList.append(correctAnswer)

    case 3: // division
      secondNumber = Int.random(in: 2...10)
      correctAnswer = Int.random(in: 1...(difficultyArray[difficulty]/secondNumber)) // the result must be an integer
      firstNumber = correctAnswer * secondNumber
      var answerList = [Int]()
      answerList.append(correctAnswer)

    default:
      break
    }
  }
}
