playsound luigis_mansion:entity.miss_petunia.splash hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s data.loot set from entity @s data.loot_storage.attack
execute if data entity @s data.loot run data modify entity @s data.loot.owner set from entity @s UUID
execute if data entity @s data.loot positioned ~ ~2.3 ~ positioned ^ ^ ^0.3 run function luigis_mansion:other/drop_loot