var num = readLine()!.split(separator: " ").map { Int(String($0))! }

if(num[0] == 0){
    print(num[1])
}else if(num[0] == 1){
    if(num[1] == 0){
        print(1)
    }else if(num[1] == 1){
        print(1)
    }else if(num[1] == 2){
        print(3)
    }else if(num[1] == 3){
        print(3)
    }else if(num[1] == 4){
        print(5)
    }else if(num[1] == 5){
        print(5)
    }else if(num[1] == 6){
        print(7)
    }else if(num[1] == 7){
        print(7)
    }
}else if(num[0] == 2){
    if(num[1] == 0){
        print(2)
    }else if(num[1] == 1){
        print(3)
    }else if(num[1] == 2){
        print(2)
    }else if(num[1] == 3){
        print(3)
    }else if(num[1] == 4){
        print(6)
    }else if(num[1] == 5){
        print(7)
    }else if(num[1] == 6){
        print(6)
    }else if(num[1] == 7){
        print(7)
    }
}else if(num[0] == 3){
    if(num[1] == 0){
        print(3)
    }else if(num[1] == 1){
        print(3)
    }else if(num[1] == 2){
        print(3)
    }else if(num[1] == 3){
        print(3)
    }else if(num[1] == 4){
        print(7)
    }else if(num[1] == 5){
        print(7)
    }else if(num[1] == 6){
        print(7)
    }else if(num[1] == 7){
        print(7)
    }
}else if(num[0] == 4){
    if(num[1] == 0){
        print(4)
    }else if(num[1] == 1){
        print(5)
    }else if(num[1] == 2){
        print(6)
    }else if(num[1] == 3){
        print(7)
    }else if(num[1] == 4){
        print(4)
    }else if(num[1] == 5){
        print(5)
    }else if(num[1] == 6){
        print(6)
    }else if(num[1] == 7){
        print(7)
    }
}else if(num[0] == 5){
    if(num[1] == 0){
        print(5)
    }else if(num[1] == 1){
        print(5)
    }else if(num[1] == 2){
        print(7)
    }else if(num[1] == 3){
        print(7)
    }else if(num[1] == 4){
        print(5)
    }else if(num[1] == 5){
        print(5)
    }else if(num[1] == 6){
        print(7)
    }else if(num[1] == 7){
        print(7)
    }
}else if(num[0] == 6){
    if(num[1] == 0){
        print(6)
    }else if(num[1] == 1){
        print(7)
    }else if(num[1] == 2){
        print(6)
    }else if(num[1] == 3){
        print(7)
    }else if(num[1] == 4){
        print(6)
    }else if(num[1] == 5){
        print(7)
    }else if(num[1] == 6){
        print(6)
    }else if(num[1] == 7){
        print(7)
    }
}else if(num[0] == 7){
    print(7)
}