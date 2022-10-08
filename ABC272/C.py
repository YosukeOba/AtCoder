N = int(input())
A = list(map(int, input().split()))

max = -1

even = []
odd = []

maxEven1 = -1
maxEven2 = -1
maxOdd1 = -1
maxOdd2 = -1

for i in range(N):
    if A[i] % 2 == 0:
        even.append(A[i])
    else:
        odd.append(A[i])

for i in range(len(even)):
    if even[i] > maxEven1:
        maxEven2 = maxEven1
        maxEven1 = even[i]
    elif even[i] > maxEven2:
        maxEven2 = even[i]


for i in range(len(odd)):
    if odd[i] > maxOdd1:
        maxOdd2 = maxOdd1
        maxOdd1 = odd[i]
    elif odd[i] > maxOdd2:
        maxOdd2 = odd[i]

if (maxEven1 + maxEven2) % 2 == 0:
    if maxEven1 != -1 and maxEven2 != -1:
        if (maxEven1 + maxEven2) > max:
            max = (maxEven1 + maxEven2)

if (maxOdd1 + maxOdd2) % 2 == 0:
    if maxOdd1 != -1 and maxOdd2 != -1:
        if (maxOdd1 + maxOdd2) > max:
            max = (maxOdd1 + maxOdd2)

print(max)
