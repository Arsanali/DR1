import Foundation
//Исаев Арсланали
//1.Решить квадратное уравнение.

func calcDescr(a:Double ,b: Double,c:Double) {
    let D = b * b - 4 * a * c
    var x1: Double = 0.0
    var x2: Double = 0.0
    
    switch true {
     case D > 0:
        x1 = (-b - sqrt(D)) / (2 * a)
        x2 = (-b + sqrt(D)) / (2 * a)
        print("Уравнение имеет 2 корня x1 = \(x1) x2 = \(x2)")
     case D == 0:
        x1 = -b / (2 * a)
        print("Уравнение имеет 1 корень x1 = \(x1) ")
    default:
        print("Нет корней")
        break
    }
    print(D)
}
calcDescr(a: 3, b: 7, c: -10)


/*2. Даны катеты прямоугольного треугольника.
Найти площадь, периметр и гипотенузу треугольника.
 */

func solutionOfCathets(a: Double ,b:Double) {
    let c = sqrt(a * a + b * a)
    let perimeter = a + b + c
    let square = (a * b) / 2
    print("Гипотенуза \(String.init(format: "%.02f", c))")
    print("Периметр \(perimeter)")
    print("Площадь \(square)")
}
solutionOfCathets(a: 10, b: 20)
/* 3. * Пользователь вводит сумму вклада в банк и годовой процент.
 Найти сумму вклада через 5 лет.*/

func calculateSumm(summ: Double , precent: Double , year: Int = 5) {
    var deposit = summ
    
    for _ in 1...year {
        deposit += (deposit/100) * precent
    }
    print("Сумма вклада через \(year) лет \(String.init(format: "%.3f", deposit))")
    
}
calculateSumm(summ: 3000, precent: 2.5)

