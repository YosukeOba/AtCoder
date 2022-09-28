var line = readLine()!.split(separator: " ").map { Int(String($0))! }

var num:[[Int]] = [[0]]

for i in 0..<line[0] {
  num.append(contentsOf: [[]])
}

while true {
  let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
  if(temp != []){
    num[temp[0]] += [temp[1]]
    num[temp[1]] += [temp[0]]
  } else {
    break
  }
}

var queue:[Int] = []

var check:Int = 0 

queue += [line[1]]

saiki(lastnum: queue[queue.count-1])

var answer:String = String(queue[0])

for i in 1..<queue.count{
  answer += " " + String(queue[i])
}

print(answer)

func saiki(lastnum: Int){
  for i in 0..<num[lastnum].count{
    if(check == 0 && queue.firstIndex(of: num[lastnum][i]) == nil){
      queue += [num[lastnum][i]]
      if(num[lastnum][i] == line[2]){
        check = 1
        return
      } else {
        if(num[num[lastnum][i]].count == 1){
          queue.removeLast()
        } else {
          saiki(lastnum: num[lastnum][i])
        }
      }
    }
  }
}