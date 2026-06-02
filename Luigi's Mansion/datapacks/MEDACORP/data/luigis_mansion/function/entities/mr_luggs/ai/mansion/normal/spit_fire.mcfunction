data modify entity @s data.loot set from entity @s data.loot_storage.attack_1
data modify entity @s[scores={Dialog=144..145}] data.loot set from entity @s data.loot_storage.attack_2
data modify entity @s[scores={Dialog=147..149}] data.loot set from entity @s data.loot_storage.attack_3
data modify entity @s[scores={Dialog=151..154}] data.loot set from entity @s data.loot_storage.attack_4
data modify entity @s[scores={Dialog=156..160}] data.loot set from entity @s data.loot_storage.attack_5
execute if data entity @s data.loot run data modify entity @s data.loot.contents[].variables.owner set from entity @s UUID
execute if data entity @s data.loot run data modify entity @s data.loot.contents[].variables.tags set value ["mr_luggs_attack"]
execute if data entity @s data.loot positioned ~ ~2 ~ positioned ^ ^ ^0.3 run function luigis_mansion:other/drop_loot