var num = readLine()!.split(separator: " ").map { Int(String($0))! }

var count = 1
num.sort {$0<$1}

for i in 0..<num.count-1 {
    if (num[i] != num[i+1]){
        count+=1
    }
}

print(count)