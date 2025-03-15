playsound luigis_mansion:entity.mr_luggs.attack hostile @a[tag=same_room] ~ ~ ~ 1
data modify storage luigis_mansion:data entity set value {owner:0,room:0,speed:10,damage:{}}
data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={Dialog=441..481}] run data modify storage luigis_mansion:data entity.speed set value 15
execute if entity @s[scores={Dialog=541..601}] run data modify storage luigis_mansion:data entity.speed set value 20
execute if entity @s[scores={Dialog=681..761}] run data modify storage luigis_mansion:data entity.speed set value 25
execute at @s positioned ~ ~2 ~ positioned ^ ^ ^0.3 run function luigis_mansion:spawn_entities/projectile/shot_fire