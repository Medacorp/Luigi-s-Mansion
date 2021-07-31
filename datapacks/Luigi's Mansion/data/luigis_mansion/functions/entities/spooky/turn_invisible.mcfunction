tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=spooky_body,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=spooky_right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=spooky_left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @s CustomNameVisible set value 0b