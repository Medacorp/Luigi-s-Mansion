data modify entity @s data.loot set from entity @s data.loot_storage.attack
execute if data entity @s data.loot run data modify entity @s data.loot.contents[].variables.owner set from entity @s UUID
execute if data entity @s data.loot positioned ^ ^-0.3 ^1 run function luigis_mansion:other/drop_loot