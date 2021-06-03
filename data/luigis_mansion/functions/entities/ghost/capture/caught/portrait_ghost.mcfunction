execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.portrait_ghost run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {portrait_ghost:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.portrait_ghost
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.caught.portrait_ghost int 1 run scoreboard players add #temp ActionTime 1

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1