var num = Int(String(readLine()!))!
var dish = readLine()!.split(separator: " ").map { Int(String($0))! }

var max:Int = 0
var count:Int = 0

var intArray = [Int](repeating: 0, count: num)

for i in 0..<num {
    if(dish[i]-i+1 < 0){
        intArray[num+(dish[i]-i+1)] += 1
        intArray[num+(dish[i]-i)] += 1
        intArray[num+(dish[i]-i-1)] += 1
    } else if(dish[i]-i < 0){
        intArray[dish[i]-i+1] += 1
        intArray[num+(dish[i]-i)] += 1
        intArray[num+(dish[i]-i-1)] += 1
    } else if(dish[i]-i-1 < 0){
        intArray[dish[i]-i+1] += 1
        intArray[dish[i]-i] += 1
        intArray[num+(dish[i]-i-1)] += 1
    } else {
        intArray[dish[i]-i+1] += 1
        intArray[dish[i]-i] += 1
        intArray[dish[i]-i-1] += 1
    }
}

if(intArray.max()! > num){
  print(num)
} else {
    print(intArray.max()!)
}
