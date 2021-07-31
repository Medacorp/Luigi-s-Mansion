execute if entity @s[tag=fire] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.ghosts.fire_elemental_ghost.loot
execute if entity @s[tag=water] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.ghosts.water_elemental_ghost.loot
execute if entity @s[tag=ice] run data modify storage luigis_mansion:data drop_loot set from storage luigis_mansion:data current_state.current_data.ghosts.ice_elemental_ghost.loot
function luigis_mansion:entities/ghost/drop_loot
data remove storage luigis_mansion:data drop_loot