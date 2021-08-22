tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=!floating_whirlindas_female,tag=body,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=!floating_whirlindas_female,tag=right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=!floating_whirlindas_female,tag=left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @s CustomNameVisible set value 0b
data modify entity @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female,tag=body,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female,tag=right_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female,tag=left_arm,limit=1] ArmorItems[3] set value {}
data modify entity @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] CustomNameVisible set value 0b