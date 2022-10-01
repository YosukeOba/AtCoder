var num = Int(String(readLine()!))!
var sunuke = readLine()!.split(separator: " ").map { Int(String($0))! }

var check:[Int] = [Int](repeating: 0, count: num)

var queue:[Int] = []

var books:Int = 0

for i in 0..<num {
    if(sunuke[i] <= num){
        if(check[sunuke[i]-1] == 0){
            check[sunuke[i]-1] = 1
            queue += [sunuke[i]]
        } else if (check[sunuke[i]-1] == 1){
            books+=1
        }
    } else {
        books+=1
    }
}

queue.sort{$0<$1}

var count:Int = 0

for i in 0..<check.count {
    if(check[i] == 1){
        count+=1
    } else {
        if(books >= 2){
            count+=1
            books-=2
        } else if (books == 1 && queue.count >= 1){
            if(queue[queue.count-1] > count){
            count+=1
            books-=1
            check[queue[queue.count-1]-1] = 0
            queue.removeLast()
            } else {
                break
            }
        } else if (books == 0 && queue.count >= 2){
            if(queue[queue.count-1] > count && queue[queue.count-2] > count){
            count+=1
            check[queue[queue.count-1]-1] = 0
            check[queue[queue.count-2]-1] = 0
            queue.removeLast()
            queue.removeLast()
            } else {
                break
            }
        } else {
            break
        }
    }
}

print(count)