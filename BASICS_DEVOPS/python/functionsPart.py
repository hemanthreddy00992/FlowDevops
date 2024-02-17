###############
def add(a, b):
    c = a + b
    return c

print(add(2, 3))


#######################
def adder(a1,a2):
    c1=a1+a2
    print(c1)
adder(3,5)

##########################
def summ(arg):
    x=0
    for i in arg:
        x=x+i
    return x
out = summ([1,2,3,4])
print(out)

#############################
def s1(arg1="morning"):
    print(f"Good {arg1}")

s1()
s1("evening")

###########################
#keywords argument
def vac_feedback(vac,efficacy):
    print(f"{vac} vaccine is having {efficacy} % efficacy")
    if((efficacy >50) and (efficacy <=75 )) :
        print("Seems not so effective, needs more trails")
    elif((efficacy >75) and (efficacy <90 )):
        print("Can consider this medicine")
    elif efficacy>=90:
        print("Sure, will take the shot")
    else:
        print("needs many more trails")

vac_feedback("pfizer",95)
vac_feedback("def1",50)
vac_feedback("def2",10)
vac_feedback(efficacy=34, vac="unknown")



############################################################
#Variable length arguments (Non keyword arguments)
# *args is a tuple
def order_food(min_order,*args):
    print(f"you have ordered: {min_order}")
    print(args)
    for item in args:
        print(f"you also ordered : {item}")
    print("Enjoy the party")
order_food("salad","pizza","biryani")



#######################################################
# variable length arguments *kwargs (keyword arguments)
import random
def time_activity(*args, **kwargs):
    #print(args)
    # print(kwargs)
    min=sum(args) + random.randint(0,60)
    # print(min)
    choice= random.choice(list(kwargs.keys()))
   # print(choice)
    print(f"You have to spent {min} for {kwargs[choice]}")
time_activity(10,20,30, hobby="dance", sport="boxing", fun="driving", work="Devops")

