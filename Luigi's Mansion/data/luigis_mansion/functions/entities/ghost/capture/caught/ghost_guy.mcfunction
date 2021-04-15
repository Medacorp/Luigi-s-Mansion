execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.ghost_guy run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {ghost_guy:0}
execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.dancing_ghost_guy run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {dancing_ghost_guy:0}
execute if entity @s[tag=dancing] store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.dancing_ghost_guy
execute if entity @s[tag=dancing] store result storage luigis_mansion:data current_state.ghost_caught.caught.dancing_ghost_guy int 1 run scoreboard players add #temp ActionTime 1
execute if entity @s[tag=!dancing] store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.ghost_guy
execute if entity @s[tag=!dancing] store result storage luigis_mansion:data current_state.ghost_caught.caught.ghost_guy int 1 run scoreboard players add #temp ActionTime 1

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1