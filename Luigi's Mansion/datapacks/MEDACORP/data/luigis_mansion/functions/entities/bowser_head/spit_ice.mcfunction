execute anchored eyes facing entity @a[tag=target,limit=1] feet anchored feet run teleport @s ~ ~ ~ ~ ~
playsound luigis_mansion:entity.bowser.spit hostile @a[tag=same_room] ~ ~ ~ 1
data modify storage luigis_mansion:data entity set value {owner:0,room:0,damage:{attack:5}}
data modify storage luigis_mansion:data entity.damage.attack set from entity @s ArmorItems[3].tag.luigis_mansion.damage.spit_ice
execute store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute at @s positioned ~ ~1.8 ~ positioned ^ ^ ^0.3 run function luigis_mansion:spawn_entities/projectile/shot_ice
teleport @s ~ ~ ~ ~ ~