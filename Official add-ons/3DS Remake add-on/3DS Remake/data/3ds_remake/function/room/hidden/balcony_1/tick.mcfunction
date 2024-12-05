execute unless score #balcony_1 Ticking matches 1 run function #3ds_remake:room/hidden/balcony_1/load
execute as @e[tag=player,x=672,y=110,z=37,dx=10,dy=7,dz=8] unless entity @s[x=672,y=101,z=37,dx=10,dy=7,dz=8] unless entity @s[scores={Room=6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=672,y=110,z=37,dx=10,dy=7,dz=8] unless entity @s[x=672,y=101,z=37,dx=10,dy=7,dz=8] run scoreboard players set @s[tag=!separated_camera] Room 6
#todelete - old furniture
scoreboard players set #temp Room 6
#/todelete

execute as @a[scores={Room=6}] run function 3ds_remake:room/hidden/balcony_1/tick_per_player

execute if entity @e[tag=toad,scores={Room=6},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.balcony_1{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:6}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_2"},room:6,progress:0}
execute if entity @e[tag=toad,scores={Room=6},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.balcony_1{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:6}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_2_repeat"},room:6,progress:0}

#todelete - old furniture
function #3ds_remake:room/hidden/balcony_1/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=6},limit=1] run function 3ds_remake:room/hidden/balcony_1/ghosts