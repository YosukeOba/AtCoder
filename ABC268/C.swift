var num = Int(String(readLine()!))!
var dish = readLine()!.split(separator: " ").map { Int(String($0))! }

var max:Int = 0
var count:Int = 0

var lu:[Int] = []

for i in 0..<num {
    let result = dish.firstIndex(of: i)
    lu += [result!]
  	let temp:Int = dish[0]
  	dish.removeFirst()
  	dish += [temp]
}

var intArray = [Int](repeating: 0, count: num)

for i in 0..<num {
    intArray[lu[i]] += 1
    if(lu[i]-1 < 0){
        intArray[num-1] += 1
    } else {
        intArray[lu[i]-1] += 1
    }
    if(lu[i]+1 >= num){
        intArray[0] += 1
    } else {
        intArray[lu[i]+1] += 1
    }
}

for i in 0..<num {
    if(max < intArray[i]){
        max = intArray[i]
    }
}

if(max > num){
  max = num
}

print(max)