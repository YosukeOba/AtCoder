N = int(input())
a = list(map(int, input().split()))

a.sort()

check = [False] * (N)

books = 0

queue = []

for i in range(N):
  if a[i] > N:
    books+=1
  elif check[a[i]-1] == False:
    check[a[i]-1] = True
    queue.append(a[i])
  else:
    books+=1

count = 0

while count < N:
  if check[count] == True:
    count+=1
  else:
    if books>=2:
      count+=1
      books-=2
    elif books==1 and len(queue) >= 1:
      if count < queue[-1]:
        check[queue[-1]-1] = False
        queue.pop(-1)
        count+=1
        books-=1
      else:
        break
    elif books==0 and len(queue) >= 2:
      if count < queue[-1] and count < queue[-2]:
        check[queue[-1]-1] = False
        check[queue[-2]-1] = False
        queue.pop(-1)
        queue.pop(-1)
        count+=1
      else:
        break
    else:
      break

print(count)