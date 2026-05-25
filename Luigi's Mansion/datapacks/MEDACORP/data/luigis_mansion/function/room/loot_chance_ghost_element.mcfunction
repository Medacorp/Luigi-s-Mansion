data modify entity @s data.loot set from entity @s data.loot_storage.drop_at_0
execute if entity @s[scores={Room=..-1}] unless data entity @s data.loot{works_in_lab:1b} run data remove entity @s data.loot
execute if data entity @s data.loot run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
tag @s add dropped_loot_at_0