tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_melody_pianissima_body,limit=1] ArmorItems[3] set value {}
data modify entity @s HandItems set value [{},{}]
data modify entity @s CustomNameVisible set value 0b