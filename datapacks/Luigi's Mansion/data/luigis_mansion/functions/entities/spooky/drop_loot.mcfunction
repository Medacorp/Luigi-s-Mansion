data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.loot
execute if entity @s[scores={Room=1..}] run function #luigis_mansion:entities/ghost/drop_loot
data remove storage luigis_mansion:data drop_loot