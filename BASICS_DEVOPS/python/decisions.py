x=21

if x > 112:
    print(True)
elif x == 21:
    print("sucess")
else:
    print(False)
print("")

devops =("linux","vagrant","bash","aws","jenkins","python","Ansible")
print("This IT Organization has various skill sets")
print("Findout your match")
development = ("Nodejs","java",".net","Angularjs")
person1 = {"Name":"Rocky","skills":"Blockchain"}
person2 = {"Name":"marshal","skills" : "AI"}

user=input("Enter your desired skill: ")
if(user in devops):
    print(f"we have {user} in devops team")
elif (user in development):
    print(f"We have {user} in development")
elif ((user in person1.values()) or (user in person2.values())):
    print("We have contract employess")
else:
    print("skill not found")