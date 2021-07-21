import random
eisodos = 'Null'
print("Choose R for Rock, P for Paper, S for Scissors, X to exit")
eisodos = input()
while eisodos != 'X':

    if eisodos == 'X':
        break
    elif eisodos == 'R':
        randnum = 2
    elif eisodos == 'P':
        randnum = 3
    elif eisodos == 'S':
        randnum = 1

    if randnum == 1:
        print("Rock")
        if eisodos == 'R':
            print("Draw !!")
        elif eisodos == 'P':
            print("Win !!")
        else:
            print("Gay !!")
    elif randnum == 2:
        print("Paper")
        if eisodos == 'R':
            print("Gay !!")
        elif eisodos == 'P':
            print("Draw !!")
        else:
            print("Win !!")
    else:
        print("Scissors")
        if eisodos == 'R':
            print("Win !!")
        elif eisodos == 'P':
            print("Gay !!")
        else:
            print("Draw !!")

    print("Choose R for Rock, P for Paper, S for Scissors, X to exit")
    eisodos = input()

