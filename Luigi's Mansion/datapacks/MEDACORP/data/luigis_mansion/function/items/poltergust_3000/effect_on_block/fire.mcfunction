particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute if score #temp MirrorX matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/effect_on_block/mirror/fire_x
execute if score #temp MirrorZ matches -2147483648.. as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/effect_on_block/mirror/fire_z

#todelete - old furniture
execute unless block ~ ~ ~ minecraft:air as @e[tag=interact,limit=1,tag=!shot_fire,tag=!shot_water,tag=!shot_ice] run function luigis_mansion:items/poltergust_3000/interact
#/todelete