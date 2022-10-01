var num = readLine()!.split(separator: " ").map { Int(String($0))! }

var L:[[Int]] = []
var Q:[[Int]] = []

for i in 0..<num[0] {
    L.append(contentsOf: [[]])
    L[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for i in 0..<num[1] {
    Q.append(contentsOf: [[]])
    Q[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for i in 0..<num[1] {
    var temp1:Int = Q[i][0]
    var temp2:Int = Q[i][1]
    print(L[temp1-1][temp2])
}