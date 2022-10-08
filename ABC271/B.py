N = list(map(int, input().split()))

L = []
s = []

for i in range(N[0]):
  L.append(list(map(int, input().split())))
  
for i in range(N[1]):
  s.append(list(map(int, input().split())))
  
for i in range(N[1]):
  print(L[s[i][0]-1][s[i][1]])