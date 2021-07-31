tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=melody_pianissima_body,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=melody_pianissima_right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=melody_pianissima_left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @s CustomNameVisible set value 0b