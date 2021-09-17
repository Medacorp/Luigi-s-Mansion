execute if entity @s[tag=!dancing] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.ghosts.ghost_guy.loot
execute if entity @s[tag=dancing] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.ghosts.dancing_ghost_guy.loot
execute if entity @s[scores={Room=1..}] run function luigis_mansion:entities/ghost/drop_loot
data remove storage luigis_mansion:data drop_loot