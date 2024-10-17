data modify storage luigis_mansion:data backup_loot set from entity @s data.loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot.drop_at_0
execute if entity @s[scores={Room=..-1}] unless data entity @s data.loot{works_in_lab:1b} run data remove entity @s data.loot
data remove storage luigis_mansion:data backup_loot.drop_at_0
execute if data entity @s data.loot run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot
data remove storage luigis_mansion:data backup_loot
tag @s add dropped_loot_at_0