tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_model,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=sir_weston_ice,limit=1] ArmorItems[3] set value {}
data modify entity @s CustomNameVisible set value 0b