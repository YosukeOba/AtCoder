var num = Int(String(readLine()!))!
var dish = readLine()!.split(separator: " ").map { Int(String($0))! }

var max:Int = 0
var count:Int = 0

for i in 0..<num {
    count = 0
    for j in 0..<num {
        var minus:Int = j-1
        if(minus < 0){
            minus = num - 1
        }
        var plus:Int = j+1
        if(plus >= num){
            plus = 0
        }
        if(j == dish[minus] || j == dish[j] || j == dish[plus]){
            count+=1
        }
    }
    if(max < count){
        max = count
    }
    var temp:Int = dish[0]
    dish.removeFirst()
    dish += [temp]
}

print(max)