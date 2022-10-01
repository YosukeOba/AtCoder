var num = Int(String(readLine()!))!
var sunuke = readLine()!.split(separator: " ").map { Int(String($0))! }

sunuke.sort { $0 < $1 }
 
var count:Int = 0

var books:Int = 0

var i:Int = 0

while i<sunuke.count {
    if(sunuke[i] == count+1){
        count+=1
    } else if (sunuke[i] == count) {
        books += 1
    } else {
        if (books >= 2) {
            books-=2
            sunuke.insert(count+1, at:i)
            count+=1
        } else if (books >= 1 && sunuke.count-i >= 1){
            books-=1
            sunuke.removeLast()
            sunuke.insert(count+1, at:i)
            count+=1
        } else if (sunuke.count-i >= 2){
            sunuke.removeLast()
            sunuke.removeLast()
            sunuke.insert(count+1, at:i)
            count+=1
        }
    }
    i+=1
}

count+=books/2

print(count)