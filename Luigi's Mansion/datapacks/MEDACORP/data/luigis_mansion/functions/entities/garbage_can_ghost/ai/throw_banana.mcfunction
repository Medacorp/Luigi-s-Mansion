data modify storage luigis_mansion:data entity set value {owner:-1,damage:{},tags:["thrown"]}
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute positioned ^ ^1 ^0.3 run function luigis_mansion:spawn_entities/banana_peel