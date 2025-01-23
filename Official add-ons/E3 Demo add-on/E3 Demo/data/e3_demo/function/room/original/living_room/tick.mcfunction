execute unless score #living_room Ticking matches 1 run function #e3_demo:room/original/living_room/load
execute as @e[tag=player,x=712,y=19,z=17,dx=17,dy=7,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=712,y=19,z=17,dx=17,dy=7,dz=21] Room 3
#todelete - old furniture
scoreboard players set #temp Room 3
#/todelete

execute as @a[scores={Room=3}] run function e3_demo:room/original/living_room/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/living_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=3},limit=1] run function e3_demo:room/original/living_room/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.living_room.time_spent_in
execute if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} if entity @a[tag=!door_animation,scores={Room=3},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.living_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time