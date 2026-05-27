execute positioned ~ ~1 ~ facing entity @e[tag=luigi,tag=target,limit=1] feet run teleport @s ~ ~-1 ~ ~ ~
playsound luigis_mansion:entity.bowser.spit hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s data.loot set from entity @s data.loot_storage.head_attack
execute if data entity @s data.loot run data modify entity @s data.loot.owner set from entity @s UUID
execute if data entity @s data.loot at @s positioned ~ ~1 ~ positioned ^ ^ ^0.3 run function luigis_mansion:other/drop_loot
teleport @s ~ ~ ~ ~ ~
