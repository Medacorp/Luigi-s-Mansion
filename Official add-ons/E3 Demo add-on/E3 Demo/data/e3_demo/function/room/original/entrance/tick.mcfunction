execute unless score #entrance Ticking matches 1 run function #e3_demo:room/original/entrance/load
execute as @e[tag=player,x=743,y=10,z=-2,dx=15,dy=16,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=743,y=10,z=-2,dx=15,dy=16,dz=21] Room 1
#todelete - old furniture
scoreboard players set #temp Room 1
#/todelete

execute as @a[scores={Room=1}] run function e3_demo:room/original/entrance/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/entrance/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=1},limit=1] run function e3_demo:room/original/entrance/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.entrance.time_spent_in
execute if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} if entity @a[tag=!door_animation,scores={Room=1},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.entrance{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.entrance.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time