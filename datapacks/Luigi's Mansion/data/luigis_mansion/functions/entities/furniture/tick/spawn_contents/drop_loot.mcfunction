data modify storage luigis_mansion:data drop_loot set from entity @s ArmorItems[3].tag.loot.contents
execute if data entity @s ArmorItems[3].tag.loot.name run data modify storage luigis_mansion:data current_state.current_data.money_spawned append from storage luigis_mansion:data drop_loot.name
function #luigis_mansion:entities/ghost/drop_loot
data remove storage luigis_mansion:data drop_loot
data remove entity @s ArmorItems[3].tag.loot