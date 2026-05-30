data modify entity @s data.loot set from entity @s data.loot_storage.drop_at_0
execute if data entity @s data.loot unless data storage luigis_mansion:data current_state.current_data.portrait_battle run function luigis_mansion:other/drop_loot
data remove entity @s data.loot