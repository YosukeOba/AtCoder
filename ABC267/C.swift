let num = readLine()!.split(separator: " ").map { Int(String($0))! }
let A = readLine()!.split(separator: " ").map { Int(String($0))! }
var sum = [Int]()

var temp:Int = 0

for i in 0..<num[1]{
  temp += A[i]
}

sum.append(temp)

for i in 1..<num[0]-num[1]+1{
  temp = temp - A[i-1] + A[i+num[1]-1]
  sum.append(temp)
}

var temp2:Int = 0

for i in 0..<num[1]{
  temp2 += (i+1)*A[num[0]-num[1]+i]
}

var max:Int = temp2

for i in 0..<num[0]-num[1]{
  temp2 = temp2 - (A[num[0]-i-1] * num[1])
  temp2 += sum[num[0]-1-num[1]-i]
  if(temp2 > max){
    max = temp2
  }
}

print(max)