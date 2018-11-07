///scr_swap_gladiator_places(gladiator1, gladiator2)

g1 = argument0
g2 = argument1

tempx = g1.x
tempy = g1.y

g1.x = g2.x
g1.y = g2.y

g2.x = tempx
g2.y = tempy

