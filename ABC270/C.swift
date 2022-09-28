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
var answerQueue:[Int] = []

var check:Int = 0

var checks:[Int] = [Int](repeating: 0, count: num.count+1)
checks[line[1]] = 1

queue += [line[1]]

saiki(lastnum: queue[queue.count-1])

var answer:String = String(answerQueue[0])

for i in 1..<answerQueue.count{
  answer += " " + String(answerQueue[i])
}

print(answer)

func saiki(lastnum: Int){
  for i in 0..<num[lastnum].count{
    if(check == 0 && checks[num[lastnum][i]] == 0){
      queue += [num[lastnum][i]]
      checks[num[lastnum][i]] = 1
      if(num[lastnum][i] == line[2]){
        check = 1
        answerQueue = queue
        return
      } else {
        if(num[num[lastnum][i]].count == 1){
          checks[num[lastnum][i]] = 0
          queue.removeLast()
        } else {
          saiki(lastnum: num[lastnum][i])
          queue.removeLast()
        }
      }
    }
  }
}