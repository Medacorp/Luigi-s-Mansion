execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.blue_mouse run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {blue_mouse:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.blue_mouse
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.caught.blue_mouse int 1 run scoreboard players add #temp ActionTime 1

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1

execute as @a[tag=killer,limit=1] run function luigis_mansion:entities/ghost/exterminate