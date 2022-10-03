import Foundation

var num = readLine()!.split(separator: " ").map { Int(String($0))! }

var max:Int = -1

var temp1:Int = 0
var temp2:Int = 0

for i in 1..<num[0] {
    temp1 = 0
    temp2 = 0
    for k in 0..<i{
        temp1 += pow(10, k)
    }
    for j in 1..<10 {
        temp2 = temp1*j
        if(temp2%num[1] == 0){
            max = temp2
        }
    }
}

print(max)