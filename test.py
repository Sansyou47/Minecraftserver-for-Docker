# 入力
h,a,b=(int(x) for x in input().split())
z=1000

def count(hp,atk,hel):
    turn = 1
    while hp >= 0:
        hp -= atk
        if hp <= 0:
            return turn
        hp += hel
        turn += 1
        
def x(hp,atk,hel):
    turn = 0
    while hp >= 0:
        hp -= atk*z
        if hp <= 0:
            y(turn,hp+(hel*z),atk,hel)
        hp += hel*z
        turn += z
        
def y(turn,hp,atk,hel):
    while hp >= 0:
        hp -= atk
        if hp <= 0:
            return turn
        hp += hel
        turn += 1
    
if a >= b and h >= a:
    print('YES')
    if h > 10000:
        f=x(h,a,b)
    else:
        f=count(h,a,b)
    print(f)
else:
    print('NO')
