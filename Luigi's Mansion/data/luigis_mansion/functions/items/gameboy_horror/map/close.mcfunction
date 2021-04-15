effect clear @s minecraft:night_vision
effect clear @s minecraft:speed
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["me"]}
tag @s add me
execute as @e[type=minecraft:area_effect_cloud,tag=me] run function luigis_mansion:items/gameboy_horror/map/return
tag @s remove me
tag @s remove looking_at_map
execute unless entity @a[tag=looking_at_map,limit=1] run kill @e[type=minecraft:armor_stand,tag=key,tag=display]
tag @s add seen_room_name
tag @s add seen_room_name_2
title @s subtitle ""
scoreboard players set @s UseItem 0
execute at @s run playsound luigis_mansion:item.gameboy_horror.map.close player @a[tag=same_room] ~ ~ ~ 1