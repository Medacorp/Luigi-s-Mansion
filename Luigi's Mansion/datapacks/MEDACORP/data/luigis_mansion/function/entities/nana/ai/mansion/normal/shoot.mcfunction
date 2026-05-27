execute positioned ~ ~2 ~ facing entity @e[tag=me,limit=1] eyes run teleport @s ~ ~-2 ~ ~ ~10
playsound luigis_mansion:entity.nana.attack hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s data.loot set from entity @s data.loot_storage.attack
execute if data entity @s data.loot run data modify entity @s data.loot.owner set from entity @s UUID
execute if data entity @s data.loot at @s positioned ~ ~1.5 ~ positioned ^ ^ ^0.3 run function luigis_mansion:other/drop_loot