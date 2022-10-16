X, K = map(int, input().split())

for i in range(1,K+1):
  if len(str(X)) < i:
    X = 0
    break
  if int(str(X)[-i]) >= 5:
    X = int(int(X * 10 ** -i + 1) * (10 ** i))
  else:
    X = int(int(X * 10 ** -i) * (10 ** i))
  
print(int(X))