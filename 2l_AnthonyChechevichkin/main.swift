//
//  main.swift
//  2l_AnthonyChechevichkin
//
//  Created by Антон Чечевичкин on 04.09.2020.
//  Copyright © 2020 Антон Чечевичкин. All rights reserved.
//

import Foundation



//Четное ли число

print("Введите число, чтобы узнать, четное оно или нет...")

var exampleNumber = Int(readLine()!)

func evenOddNumber() -> String {

    guard exampleNumber != nil else {return "Введите нормальное число"}

    if (exampleNumber! % 2 > 0) {
        return ("Число нечетное")
    } else {
        return ("Число четное")
    }
}


print(evenOddNumber())




//Делится ли число на 3 без остатка

print("Введите число, чтобы узнать, делится ли оно на 3...")

var devidedNumber = Int(readLine()!)

func dividedByThree () -> String {

    guard devidedNumber != nil else {return "Введите нормальное число"}

    if (devidedNumber! % 3 > 0) {
        return "Число не делится на 3"
    } else {
        return "Число делится на 3"
    }
}

print(dividedByThree ())




//Массив из 100 чисел

var hundredArray: [Int] = []
var i: Int = 1

for _ in 0...99 {
    hundredArray.append(i)
    print(i)
    i += 1
}

print(hundredArray)




//Удаление из массива всех четных чисел и чисел, которые не делятся на 3

for value in hundredArray {

    var index: Int = 0

    if (value % 2) == 0 || (value % 3) != 0  {
    print("Значение \(value) удалено из массива")
        hundredArray.remove(at: hundredArray.firstIndex(of: value)!)
    } else {
    print("Значение \(value) осталось в массиве")
    index += 1
    }
}

print(hundredArray)



//Добавить число Фибоначчи

var fibonacciArray: [Double] = [1.0, 1.0]
func addNewFibonacciNumber() {
    let index = fibonacciArray.count
    let newNumber = fibonacciArray[index - 1] + fibonacciArray[index - 2]
    fibonacciArray.append(newNumber)
}

for _ in 0..<48 {
    addNewFibonacciNumber()
}

print(fibonacciArray)
print(fibonacciArray.count)



//Задача 6

func simpleNumbers(arrayPassed: [Int]) -> [Int] {
    var simpleNumber: [Int] = []
    var subArray = arrayPassed
    while let p = subArray.first {
        simpleNumber.append(p)
        subArray = subArray.filter { $0 % p != 0 }
    }
    return simpleNumber
}

print(simpleNumbers(arrayPassed: Array(2...100)))
