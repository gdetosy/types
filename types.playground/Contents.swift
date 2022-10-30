import UIKit

var greeting = "Hello, playground"
// Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.

let mainArray: [Any] = [2.5,
                        6.66,
                        21,
                        "Hello world",
                        true,
                        false]
print(mainArray)

// Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.

let array = mainArray
for item in array {
    //    print(item)
    if let itemInt = item as? Int {
        print("This is Int: \(itemInt)")
    }
    if let itemDouble = item as? Double {
        print("This is Double: \(itemDouble)")
    }
    if let itemString = item as? String {
        print("this is String: \(itemString)")
    }
    if let itemBool = item as? Bool {
        print("this is Bool:  \(itemBool)")
    }
}

// Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите крассиво на консоль пары ключ/значения для всех элементов коллекции.

let arrayWithKey: [String: Any] = ["Double": 3.5,
                                 "Int": 1,
                                 "String": "Hello World",
                                 "BoolTrue": true,
                                 "BooleFalse": false]
for (key, value) in arrayWithKey {
    print("\(key): \(value)")
}

// Создайте переменную total типа Double, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно true, либо вычтите 3, если оно false.  Напечатайте значение total.

var newArray: [Any] = []

for item in arrayWithKey.values {
    newArray.append(item)
}

var total: Double = 0
func summ(newArray: [Any]) -> Double {
    for item in newArray {
        if let itemDouble = item as? Double {
            total += itemDouble
        }
        if let itemDouble = item as? Int {
            total += Double(itemDouble)
        }
        if item is String {
            total += 1
        }
        if let itemDouble = item as? Bool {
            if itemDouble == true {
                total += 2
            } else {
                total -= 3
            }
        }
    }
    return total
}
print("\(summ(newArray: newArray))")

// Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.

total = 0
func summ1(newArray: [Any]) -> Double {
    for item in newArray {
        if let itemDouble = item as? Double {
            total += itemDouble
        }
        if let itemDouble = item as? Int {
            total += Double(itemDouble)
        }
        if let itemDouble = item as? String {
            let count = Double(itemDouble.count)
            total += count
        }
    }
    return total
}
print("\(summ1(newArray: newArray))")
