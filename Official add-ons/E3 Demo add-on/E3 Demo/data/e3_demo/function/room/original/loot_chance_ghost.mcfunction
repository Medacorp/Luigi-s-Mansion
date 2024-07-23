data modify storage luigis_mansion:data backup_loot set from entity @s data.loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot.drop_at_0
data remove storage luigis_mansion:data backup_loot.drop_at_0
execute if data entity @s data.loot unless data storage luigis_mansion:data current_state.current_data.portrait_battle run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot
data remove storage luigis_mansion:data backup_loot