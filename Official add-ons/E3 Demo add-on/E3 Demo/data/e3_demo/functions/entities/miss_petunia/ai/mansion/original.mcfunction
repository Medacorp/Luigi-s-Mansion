execute unless block ~3 ~ ~ minecraft:air unless entity @s[tag=vanish] as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=!visible,limit=1] run function luigis_mansion:old_entities/miss_petunia/turn_shadow_visible
execute if block ~3 ~ ~ minecraft:air as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=visible,limit=1] run function luigis_mansion:old_entities/miss_petunia/turn_shadow_invisible
tag @s remove visible
execute if entity @s[tag=scanned] run function e3_demo:room/gallery/clear_task/task_8