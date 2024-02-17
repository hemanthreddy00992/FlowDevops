
#for loop
planet ="Earth"
members=["me","you","they","them"]
for i in members:
    print(f"the member is {i} ")
    for j in i:
        print(j)

#while loop
'''
p=0
while(p<=10):
    print("The value of p is :",p)
    p+=1
'''

#break statement
for i in "Devops":
    print(i)
    if(i=="o"):
        print("Found my data")
        break
    print("Out of loop")

#continue statement
for i in Devops:
    if i=="O":
        print("found the data")
        continue
    print("skipped one iteration")