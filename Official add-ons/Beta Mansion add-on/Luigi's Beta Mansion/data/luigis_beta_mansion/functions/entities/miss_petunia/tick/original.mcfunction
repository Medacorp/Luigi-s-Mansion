execute unless block ~3 ~ ~ minecraft:air unless entity @s[tag=vanish] as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=!visible,limit=1] run function luigis_mansion:entities/miss_petunia/turn_shadow_visible
execute if block ~3 ~ ~ minecraft:air as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=visible,limit=1] run function luigis_mansion:entities/miss_petunia/turn_shadow_invisible
function luigis_mansion:entities/miss_petunia/turn_invisible
execute at @s[tag=!vanish] run function luigis_mansion:animations/miss_petunia/idle
execute as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,limit=1] positioned ~3.5 ~ ~ run function luigis_mansion:animations/miss_petunia/shadow