var num = readLine()!.split(separator: " ").map { Int(String($0))! }
var A = readLine()!.split(separator: " ").map { Int(String($0))! }

var count:Int = 0
var temp:Int = 0
var sum:Int = 0

var max:Int = 0

var turnFirst:Int = 0

saiki(rest: num[0], turn: turnFirst)

print(max)

func saiki(rest: Int, turn: Int){
    for i in 0..<num[1] {
        if(rest >= A[A.count-1-i]){
            if(turn == 0){
                temp += A[A.count-1-i]
            }
            if(rest-A[A.count-1-i] == 0){
                if(max < temp){
                    max = temp
                    return
                }
                temp -= A[A.count-1-i]
            } else {
                saiki(rest: rest-A[A.count-1-i], turn: 1-turn)
                temp -= A[A.count-1-i]
            }
        }
    }
}