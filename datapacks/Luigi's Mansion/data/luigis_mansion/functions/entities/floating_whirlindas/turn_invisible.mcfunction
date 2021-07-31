tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_body,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @s CustomNameVisible set value 0b
data modify entity @e[tag=this_model,tag=floating_whirlindas_female,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female_body,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female_right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female_left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female,limit=1] CustomNameVisible set value 0b