execute positioned ~ ~1 ~ facing entity @e[tag=luigi,tag=target,limit=1] feet run teleport @s ~ ~-1 ~ ~ ~
playsound luigis_mansion:entity.bowser.spit hostile @a[tag=same_room] ~ ~ ~ 1
data modify storage luigis_mansion:data entity set value {damage:{attack:5}}
data modify storage luigis_mansion:data entity.damage.attack set from entity @s data.damage.spit_ice
data modify storage luigis_mansion:data entity.owner set from entity @s UUID
execute at @s positioned ~ ~1 ~ positioned ^ ^ ^0.3 run function luigis_mansion:spawn_entities/projectile/shot_ice
teleport @s ~ ~ ~ ~ ~