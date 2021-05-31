execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.speedy_spirit run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {speedy_spirit:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.speedy_spirit
execute store result storage luigis_mansion:data current_state.ghost_caught.caught.speedy_spirit int 1 run scoreboard players add #temp ActionTime 1

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1