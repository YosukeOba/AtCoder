var num = readLine()!.split(separator: " ").map { Int(String($0))! }

var L:[[Int]] = []

for i in 0..<num[0] {
    L.append(contentsOf: [[]])
    L[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

var sumH:Int = 0
var sumT:Int = 0
var sumH1:Int = 0
var sumT2:Int = 0
var queueH1:String = ""
var queueH2:String = ""
var queueT1:String = ""
var queueT2:String = ""

var answer:String = ""

var check:Int = 0

saiki(lastsumH:sum,lastsumT:sum,number:0)

if(answer != ""){
    print("Yes")
    print(answer)
} else {
    print("No")
}

func saiki(lastsumH: Int, lastsumT: Int,lastsumH2: Int, lastsumT: Int, number: Int){
    if(number != num[0]-1){
        if(check != 1){
        if(lastsumH+L[number][0]>=num[0] || lastsumT+L[number][0]>=num[1]){
        } else {
            queueH+="H"
            queueH+="T"
            queueT+="T"
            saiki(lastsumH:lastsumH+L[number][0],lastsumT:lastsumT+L[number][0], number:number+1)
            queueH.removeLast()
            queueT.removeLast()
        }
        if(lastsum+L[number][1]>=num[1]){
        } else {
            queue+="T"
            saiki(lastsum:lastsum+L[number][1], number:number+1)
            queue.removeLast()
        }
        }
    } else {
        if(lastsum+L[number][0] == num[1]){
            queue+="H"
            answer = queue
            check = 1
            return
        } else if(lastsum+L[number][1] == num[1]){
            queue+="T"
            answer = queue
            check = 1
            return
        } else {
            return
        }
    }
}