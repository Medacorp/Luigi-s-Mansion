execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.green_flying_fish run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {green_flying_fish:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.green_flying_fish
execute store result storage luigis_mansion:data current_state.ghost_caught.caught.green_flying_fish int 1 run scoreboard players add #temp ActionTime 1

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1