execute if entity @s[tag=blue_clockwork_soldier] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.blue_loot
execute if entity @s[tag=pink_clockwork_soldier] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.pink_loot
execute if entity @s[tag=green_clockwork_soldier] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.green_loot
execute if entity @s[scores={Room=1..}] run function #luigis_mansion:entities/ghost/drop_loot
data remove storage luigis_mansion:data drop_loot