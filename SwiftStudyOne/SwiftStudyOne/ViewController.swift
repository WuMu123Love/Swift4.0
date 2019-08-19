//
//  ViewController.swift
//  SwiftStudyOne
//
//  Created by fls on 2019/7/10.
//  Copyright © 2019年 fls. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//1
        print("Hellow,world!");
        
        let string = "测试"
        print(string)
        let A = 1 + 1
        print(A)
   //2
        typealias Feet = Int
        let distance: Feet = 100
        print(distance)
    //3
        var str : String?
        str = "123"
        if str != nil {
            print(str!)
        }else{
            print("空值")
        }
        
       //4
//        var myString:String!
//        myString = "666666";
//        if myString != nil{
//            print(myString)
//        }else{
//            print("为空值")
//        }
        
        var myString:String!
        
        myString = "Hello, Swift!"
        
        if myString != nil {
            print(myString)
        }else{
            print("myString 值为 nil")
        }
        //5
        let 你好 = "你好世界"
        print(你好)
        print("\(你好)78945656\(myString!)")
        print("\"\(你好)\"的字符串长度:\(你好.count)")
        
        
        if myString == 你好 {
            print("两个字符串相等")
        }else{
            print("两个字符串不相等")
        }
        
        //6
        // Swift 中以下赋值会报错
//        let char1: Character = ""
//        let char2: Character = ""
//
//        print("char1 的值为 \(char1)")
//        print("char2 的值为 \(char2)")
        for ch in "123456789" {
            print(ch)
        }
        
        //7
        var strA = "123"
        let strB = "456"
        strA.append(strB)
        print(strA)
        
        //7
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        
        for (value) in someDict.enumerated() {
            print(" 字典 (key, value) 对 \(value.element.value)")
        }
        //8
        
        let names = ["AT", "AE", "D", "S", "BE"]
        var reversed = names.sorted( by: { $0 < $1 } )
        print(reversed)
        //9
        let shuju  = [1,2,3,4,5]
        let rev = shuju.sorted(by: >)
        print(rev)
        
        //10 枚举
        enum Month: Int {
            case January = 1, February, March, April, May, June, July, August, September, October, November, December
        }
        
        let yearMonth = Month.May.rawValue
        print("数字月份为: \(yearMonth)。")
        //11 结构体
        struct markStruct{
            var mark1: Int
            var mark2: Int
            var mark3: Int
            
            init(mark1: Int, mark2: Int, mark3: Int){
                self.mark1 = mark1
                self.mark2 = mark2
                self.mark3 = mark3
            }
        }
        
        print("优异成绩:")
        var marks = markStruct(mark1: 98, mark2: 96, mark3:100)
        print(marks.mark1)
        print(marks.mark2)
        print(marks.mark3)
        
        print("糟糕成绩:")
        var fail = markStruct(mark1: 34, mark2: 42, mark3: 13)
        print(fail.mark1)
        print(fail.mark2)
        print(fail.mark3)
        
        //12 类
        class studentMarks {
            var mark1 = 300
            var mark2 = 400
            var mark3 = 900
        }
        let marks2 = studentMarks()
        print("Mark1 is \(marks2.mark1)")
        print("Mark2 is \(marks2.mark2)")
        print("Mark3 is \(marks2.mark3)")
        

        //13 存储属性
        struct Number
        {
            var digits: Int
            let pi = 3.1415
        }
        
        var n = Number(digits: 12345)
//        n.digits = 67
        
        print("\(n.digits)")
        print("\(n.pi)")
        
        //14
        class calculations {
            let a: Int
            let b: Int
            let res: Int
            
            init(a: Int, b: Int) {
                self.a = a
                self.b = b
                res = a + b
                print("Self 内: \(res)")
            }
            
            func tot(c: Int) -> Int {
                return res - c
            }
            
            func result() {
                print("结果为: \(tot(c: 20))")
                print("结果为: \(tot(c: 50))")
            }
        }
        
        let pri = calculations(a: 600, b: 300)
        let sum = calculations(a: 1200, b: 300)
        
        pri.result()
        sum.result()
        
        //15
        struct area {
            var length = 1
            var breadth = 1
            
            func area() -> Int {
                return length * breadth
            }
            
            mutating func scaleBy(res: Int) {
                length *= res
                breadth *= res
                print(length)
                print(breadth)
            }
        }
        var val = area(length: 3, breadth: 5)
        val.scaleBy(res: 13)
        print(val.length)
        print(val.breadth)

        //16
        struct Matrix {
            let rows: Int, columns: Int
            var print: [Double]
            init(rows: Int, columns: Int) {
                self.rows = rows
                self.columns = columns
                print = Array(repeating: 0.0, count: rows * columns)
            }
            subscript(row: Int, column: Int) -> Double {
                get {
                    return print[(row * columns) + column]
                }
                set {
                    print[(row * columns) + column] = newValue
                }
            }
        }
        // 创建了一个新的 3 行 3 列的Matrix实例
        var mat = Matrix(rows: 3, columns: 3)
        
        // 通过下标脚本设置值
        mat[0,0] = 1.0
        mat[0,1] = 2.0
        mat[1,0] = 3.0
        mat[1,1] = 5.0
        print(mat.print);
        
        //17 final
//        final class Circle {
//            final var radius = 12.5
//            var area: String {
//                return "矩形半径为 \(radius) "
//            }
//        }
//        class Rectangle: Circle {
//            var print = 7
//            override var area: String {
//                return super.area + " ，但现在被重写为 \(print)"
//            }
//        }
//
//        let rect = Rectangle()
//        rect.radius = 25.0
//        rect.print = 3
//        print("半径: \(rect.area)")
//
//        class Square: Rectangle {
//            override var radius: Double {
//                didSet {
//                    print = Int(radius/5.0)+1
//                }
//            }
//        }
//
//        let sq = Square()
//        sq.radius = 100.0
//        print("半径: \(sq.area)")
        
        
        //18
        struct Rectangle {
            var length: Double?
            
            init(frombreadth breadth: Double) {
                length = breadth * 10
            }
            
            init(frombre bre: Double) {
                length = bre * 30
            }
            
            init(_ area: Double) {
                length = area
            }
        }
        
        let rectarea = Rectangle(180.0)
        print("面积为：\(rectarea.length!)")
        
        let rearea = Rectangle(370.0)
        print("面积为：\(rearea.length!)")
        
        let recarea = Rectangle(110.0)
        print("面积为：\(recarea.length!)")
        
        //20
        class ShoppingListItem {
            var name: String?
            var quantity = 1
            var purchased = false
        }
        var item = ShoppingListItem()
        
        
        print("名字为: \(item.name)")
        print("数理为: \(item.quantity)")
        print("是否付款: \(item.purchased)")
        
        //21
        struct StudRecord {
            let stname: String
            
            init!(stname: String) {
                if stname.isEmpty {return nil }
                self.stname = stname
            }
        }
        
        let stmark = StudRecord(stname: "Runoob")
        print(stmark as Any)
        if let name = stmark {
            print("指定了学生名")
        }
        
        let blankname = StudRecord(stname: "")
        if blankname == nil {
            print("学生名为空")
        }
        
        //22 字典
        var dic = ["one":[1,2,3],"two":[4,5,6,7]];
        print(dic)
        
        dic["three"]?[0]=8
        print(dic)
        print(12[0]);
        
        
        func sumOf(numbers:Int...)->Int{
            var sum=0
             for number in numbers{
                 sum+=number
                }
             return sum
            }
        print(sumOf(numbers:42,597,12));
        
        func Fsum(Fnums:Int...)->Int{
            var allSum = 0
            for num in Fnums {
                allSum += num;
            }
            return allSum;
            
        }
        
        print(Fsum(Fnums: 1,2,3));
        
        
        //
        var LK = 0
        LK = 123
        print(LK);
        
        //
        let jfaj = 1_000_000
        print(jfaj);
        
        
    //
        let possibleNumber = "666666"
        let convertedNumber = Int(possibleNumber)
        print(convertedNumber!);//强制用!展开
        
        //x可选绑定
        if let ASB = Int(possibleNumber) {
            print(ASB);
        }
        
        //可选项
        let zxc:String? = "uoi";
        let vbn = zxc!;
        
        let poi:String! = "985"
        let uyt:String  = poi
        
        
        /***多行字面量***/
        
        let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.
 
"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
        print(quotation);
        let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.
 
"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
        print(softWrappedQuotation);
        
        let lineBreaks = """
 
This string starts with a line break.
It also ends with a line break.
 
"""
        print(lineBreaks);

        func generateQuotation() -> String {
            let quotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin,
        please your Majesty?" he asked.
        
        "Begin at the beginning," the King said gravely, "and go on
        till you come to the end; then stop."
        """
            return quotation
        }
        print(quotation == generateQuotation())
        
        
        let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"""
"""
        print(threeDoubleQuotationMarks);
        
        
        
       //空字符串
        let emptyStr = String();
        if emptyStr.isEmpty {
            print("这是一个空字符串")
        }
        
        //append()
        let cha:Character = "o"
        var Fls = "hdisahdia"
        Fls.append(cha);
        print(Fls);
        
        var word = "cafe"
        print("the number of characters in \(word) is \(word.count)")
        // Prints "the number of characters in cafe is 4"
        
        word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
        
        print("the number of characters in \(word) is \(word.count)")

        // Prints "the number of characters in café is 4"

//字符串索引
        let greeting = "Guten Tag!"
        print(greeting[greeting.startIndex])
        // G
        
//        print(greeting[greeting.endIndex])
        
        print(greeting[greeting.index(before: greeting.endIndex)])
        
        // !
        print(greeting[greeting.index(after: greeting.startIndex)])
        
        // u
        let index = greeting.index(greeting.startIndex, offsetBy: 7)
        print(greeting[index])
        
        // a
        
        //数组
        
        var listArray = ["1","2","3"]
        
        print(listArray);
        let lastObject =  listArray.removeLast();
        print(lastObject);
        var listarr = Array<String>()
        var listarr2 = [String]()
        var listarr3 = Array(repeating: 0.0, count: 3)
        var listarr4 = ["0","2","3"]
        
        //集合
        var set1 = Set<String>()
        var set2:Set<String> = ["0","1","2"];
        var set3:Set = ["5","s"]
        
        
        //字典
        var dic1 = [Int:String]();
        var airports: [String: String] = ["YYZ": "00", "DUB": "11"]
        var airports2 = ["YYZ": "Toronto", "DUB": "Dublin"]
        
        // fallthrough
       
        let YOU = 1
        switch YOU {
        case 1:
            print(YOU)
            fallthrough
        case 2:
            print("贯穿了")
        default:
            break;
        }
        
//        提前退出 guard
        
        let pp = 1
        let oo = 1
        
        
        if #available(iOS 10,macOS 10.12, *) {
            
        }
        func someFunction(_ firstParameterName: Int, _ secondParameterName: Int) {
            // In the function body, firstParameterName and secondParameterName
            // refer to the argument values for the first and second parameters.
        }
        
        
        func stepForward(_ input: Int) -> Int {
            return input + 1
        }
        func stepBackward(_ input: Int) -> Int {
            return input - 1
        }
        
        func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
            return backwards ? stepBackward : stepForward
        }
        
        
        let currentValue = 3
        let moveNearerToZero = chooseStepFunction(backwards: currentValue > 0)
        print(moveNearerToZero(1000));
        
        /**闭包**/
        
        
        /**枚举***/
        
        
    }
   
    
}

//23
extension Int {
    subscript( multtable: Int) -> Int {
        var mul = multtable
        
        var no1 = 1
        while mul > 0 {
            no1 *= 10
            mul-=1
        }
        return (self / no1) % 10
        
       
        
        
        
    }
}

