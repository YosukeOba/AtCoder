T = int(input())

for i in range(T):
    result = ""
    resultCount = 0

    N, K = map(int, input().split())
    S = input()
    Scount = S.count("1")
    check = False
    SKCount = 0
    SKZeroCount = 0
    for j in range(N-K+1):
        if check == False:
            check = True
            SKCount = S[0:K].count("1")
            SKZeroCount = S[0:K].count("0")
        else:
            if S[j-1:j] == "1":
                SKCount -= 1
            elif S[j-1:j] == "0":
                SKZeroCount -= 1

            if S[j+K-1:j+K] == "1":
                SKCount += 1
            elif S[j+K-1:j+K] == "0":
                SKZeroCount += 1

        if SKCount == Scount:
            if SKZeroCount == 0:
                resultCount += 1

        
    if resultCount == 1:
        result = "Yes"
    else:
        result = "No"

    print(result)
