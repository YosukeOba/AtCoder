var num = readLine()!.split(separator: " ").map { Int(String($0))! }

if(num[0] > num[1]){
    if(num[0] > 0){
        if(num[1] > 0){
            if(num[2] < 0){
                print((-num[2]*2)+num[0])
            } else if (num[2] > num[1]){
                print(-1)
            } else {
                print(num[0])
            }
        } else {
            print(num[0])
        }
    } else {
        print(-num[0])
    }
} else {
    if(num[0] > 0){
        print(num[0])
    } else {
        if(num[1] > 0){
            print(-num[0])
        }else{
            if(num[2] > 0){
                print((num[2]*2)+(-num[0]))
            } else if (num[2] > num[1]){
             print(-num[0])
            } else {
                print(-1)
            }
        }
    }
}