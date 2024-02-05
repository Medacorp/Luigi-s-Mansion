execute unless block ~3 ~ ~ minecraft:air unless entity @s[tag=vanish] as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=!visible,limit=1] run function luigis_mansion:old_entities/miss_petunia/turn_shadow_visible
execute if block ~3 ~ ~ minecraft:air as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=visible,limit=1] run function luigis_mansion:old_entities/miss_petunia/turn_shadow_invisible
execute if entity @s[tag=visible] run function luigis_mansion:old_entities/ghost/turn_invisible
execute if entity @s[tag=scanned] run function e3_demo:room/gallery/clear_task/task_8
execute at @s[tag=!vanish] run function luigis_mansion:old_animations/miss_petunia/idle
execute as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,limit=1] positioned ~3.5 ~ ~ run function luigis_mansion:old_animations/miss_petunia/shadow