N = list(map(int, input().split()))

x = []

check = [False] * N[0]

for i in range(N[1]):
    x.append(list(map(int, input().split())))

for i in range(1, N[0]+1):
    clist = []
    for j in range(N[1]):
        if i in x[j]:
            for k in range(1,len(x[j])):
                if not x[j][k] in clist:
                    clist.append(x[j][k])
    if len(clist) == N[0]:
        check[i-1] = True
      

aaa = "Yes"

for i in range(N[0]):
    if check[i] == False:
        aaa = "No"

print(aaa)

