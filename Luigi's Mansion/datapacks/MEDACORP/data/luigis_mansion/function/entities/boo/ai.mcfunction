function luigis_mansion:entities/ghost/get_target
tag @s remove disappear
tag @s[tag=!show_health] remove in_vacuum
tag @s[tag=!show_health] remove in_ice
tag @s[tag=appear] remove in_vacuum
tag @s[tag=appear] remove in_ice
execute if entity @s[tag=!cutscene] run function luigis_mansion:entities/boo/ai/tick
execute if entity @s[tag=cutscene] run function luigis_mansion:entities/boo/cutscene

execute at @s[tag=!flee] run function luigis_mansion:entities/ghost/ai