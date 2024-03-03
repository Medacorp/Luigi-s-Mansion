data modify storage luigis_mansion:data temp set from entity @s data.boo
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data.tracking_boos[2]
execute if score #temp Time matches 0 run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[2]
data modify storage luigis_mansion:data temp set from entity @s data.boo
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data.tracking_boos[1]
execute if score #temp Time matches 0 run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[1]
data modify storage luigis_mansion:data temp set from entity @s data.boo
execute store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data.tracking_boos[0]
execute if score #temp Time matches 0 run data remove storage luigis_mansion:data current_state.current_data.tracking_boos[0]
scoreboard players reset #temp Time
data remove storage luigis_mansion:data temp