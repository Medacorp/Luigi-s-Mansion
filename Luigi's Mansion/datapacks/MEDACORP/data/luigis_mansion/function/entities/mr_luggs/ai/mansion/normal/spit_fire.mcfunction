playsound luigis_mansion:entity.mr_luggs.attack hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s data.loot set from entity @s data.loot_storage.attack_1
data modify entity @s[scores={Dialog=321..361}] data.loot set from entity @s data.loot_storage.attack_2
data modify entity @s[scores={Dialog=421..481}] data.loot set from entity @s data.loot_storage.attack_3
data modify entity @s[scores={Dialog=521..601}] data.loot set from entity @s data.loot_storage.attack_4
data modify entity @s[scores={Dialog=681..761}] data.loot set from entity @s data.loot_storage.attack_5
execute if data entity @s data.loot run data modify entity @s data.loot.owner set from entity @s UUID
execute if data entity @s data.loot positioned ~ ~2 ~ positioned ^ ^ ^0.3 run function luigis_mansion:other/drop_loot