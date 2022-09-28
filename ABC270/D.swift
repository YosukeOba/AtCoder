var num = readLine()!.split(separator: " ").map { Int(String($0))! }
var A = readLine()!.split(separator: " ").map { Int(String($0))! }

var count:Int = 0
var temp:Int = 0
var sum:Int = 0

while num[0] > 0 {
    for i in 0..<num[1]{
        if(num[0] >= A[A.count-1-i]){
            temp = A[A.count-1-i]
            num[0] -= A[A.count-1-i]
            break
        }
    }
    if(count%2 == 0){
        sum += temp
    }
    count += 1
}

print(sum)