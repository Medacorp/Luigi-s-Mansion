tag @s remove visible
tag @s remove big
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=body,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @s CustomNameVisible set value 0b