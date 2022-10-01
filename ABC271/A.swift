var num = Int(String(readLine()!))!

let str:[String] = ["A", "B", "C", "D", "E", "F"]

var result:String = ""

while true {
    if(num % 16<10){
        result = String(num % 16) + result
    } else {
        result = str[num % 16 - 10] + result
    }
    num = num / 16
    if(num == 0){
        if(result.count == 1){
            result = "0" + result
        }
        break
    }
}

print(result)