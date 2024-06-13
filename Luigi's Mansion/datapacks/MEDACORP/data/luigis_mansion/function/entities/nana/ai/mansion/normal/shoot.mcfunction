execute positioned ~ ~2 ~ facing entity @a[tag=me,limit=1] eyes run teleport @s ~ ~-2 ~ ~ ~10
playsound luigis_mansion:entity.nana.attack hostile @a[tag=same_room] ~ ~ ~ 1
data modify storage luigis_mansion:data entity set value {owner:0,room:0,damage:{}}
data modify storage luigis_mansion:data entity.damage set from entity @s ArmorItems[3].components."minecraft:custom_data".damage
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute at @s positioned ~ ~1.5 ~ positioned ^ ^ ^0.3 run function luigis_mansion:spawn_entities/projectile/shot_needle