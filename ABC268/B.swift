let SLine = readLine()!
let TLine = readLine()!

let S = Array(SLine)
let T = Array(TLine)

var judge:String = "Yes"

if(S.count <= T.count){
    for i in 0..<S.count {
        if(S[i] != T[i]){
            judge = "No"
        }
    }
} else {
    judge = "No"
}

print(judge)

