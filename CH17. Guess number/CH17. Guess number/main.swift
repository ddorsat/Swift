//
//  main.swift
//  CH17. Guess number
//
//  Created by Dmitry on 03.12.2024.
//
import Foundation

let randomNumber = UInt8.random(in: 1...10)
print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")
var isWin = false

//repeat {
//    print("Введите ваш вариант с нажмите Enter")
//    myNumber = readLine()
//
//    if UInt8(myNumber!) == randomNumber {
//        print("Вы угадали!")
//    } else if (UInt8(myNumber!))! < randomNumber {
//        print("Ваш вариант меньше загаданного числа")
//    } else {
//        print("Ваш вариант больше загаданного числа")
//    }
//} while randomNumber != UInt8(myNumber!)

repeat {
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Вы ввели некорректное число. Попробуйте снова")
        continue
    }

    if userNumber < randomNumber {
        print("Ваш вариант меньше")
    } else if userNumber > randomNumber {
        print("Ваш вариант больше")
    } else {
        print("Вы угадали")
        isWin = true
    }
} while !isWin
