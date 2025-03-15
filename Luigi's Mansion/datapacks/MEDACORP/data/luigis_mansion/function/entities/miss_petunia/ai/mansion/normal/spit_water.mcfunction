playsound luigis_mansion:entity.miss_petunia.splash hostile @a[tag=same_room] ~ ~ ~ 1
data modify storage luigis_mansion:data entity set value {owner:0,room:0,damage:{}}
data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute at @s positioned ~ ~2.3 ~ positioned ^ ^ ^0.3 run function luigis_mansion:spawn_entities/projectile/shot_water