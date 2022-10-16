N = int(input())
K = list(map(int, input().split()))

renso = {}

for i in range(0,N):
  if i == 0:
    renso[K[i]] = 1
  elif K[i] not in renso:
    renso[K[i]] = 1
  else:
    renso[K[i]] = renso[K[i]] + 1
    
R = [0] * N

renso2 = {}
renso2.update(sorted(renso.items(), reverse=True))
    
for renso2_val in renso2.values():
    print(renso2_val)

for i in range(len(renso2), N):
    print(0)