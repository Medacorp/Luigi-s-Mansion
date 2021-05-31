execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.elemental_ghost run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {elemental_ghost:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.elemental_ghost
execute store result storage luigis_mansion:data current_state.ghost_caught.caught.elemental_ghost int 1 run scoreboard players add #temp ActionTime 1

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1