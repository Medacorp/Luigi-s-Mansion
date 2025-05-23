execute unless score #observatory Ticking matches 1 run function #luigis_mansion:room/normal/observatory/load
execute as @e[tag=player,x=627,y=15,z=-145,dx=24,dy=12,dz=72] unless entity @s[scores={Room=46}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=627,y=15,z=-145,dx=24,dy=12,dz=72] Room 46
#todelete - old furniture
scoreboard players set #temp Room 46
#/todelete

execute as @a[scores={Room=46}] run function luigis_mansion:room/normal/observatory/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/observatory/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=46},limit=1] run function luigis_mansion:room/normal/observatory/ghosts

execute as @e[tag=player,x=643.5,y=20,z=-79.5,distance=..0.7,y_rotation=135..-135,limit=1] unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless data storage luigis_mansion:data dialogs[{room:46}] run function luigis_mansion:room/normal/observatory/observe_moon
execute as @e[tag=player,x=648.0,y=20,z=-86.5,distance=..1,limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.observatory{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_path:1b} unless data storage luigis_mansion:data dialogs[{room:46}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"observatory_path"},room:46,progress:0}