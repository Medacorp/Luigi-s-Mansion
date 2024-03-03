data modify storage luigis_mansion:data temp set from entity @s data.boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[1] store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data.tracking_boos[1]
execute if score #temp Time matches 0 run tag @s add no_track
data modify storage luigis_mansion:data temp set from entity @s data.boo
execute if data storage luigis_mansion:data current_state.current_data.tracking_boos[0] store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data current_state.current_data.tracking_boos[0]
execute if score #temp Time matches 0 run tag @s add no_track
scoreboard players reset #temp Time
data remove storage luigis_mansion:data temp
execute if entity @s[tag=!no_track,nbt=!{data:{boo:{namespace:"luigis_mansion",id:"null"}}}] run data modify storage luigis_mansion:data current_state.current_data.tracking_boos append from entity @s data.boo
tag @s remove no_track