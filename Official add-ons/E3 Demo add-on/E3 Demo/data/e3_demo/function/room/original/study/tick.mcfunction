execute unless score #study Ticking matches 1 run function #e3_demo:room/original/study/load
execute as @e[tag=player,x=700,y=19,z=42,dx=17,dy=7,dz=21] unless entity @s[scores={Room=5}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=700,y=19,z=42,dx=17,dy=7,dz=21] Room 5
#todelete - old furniture
scoreboard players set #temp Room 5
#/todelete

execute as @a[scores={Room=5}] run function e3_demo:room/original/study/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/study/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=5},limit=1] run function e3_demo:room/original/study/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.study.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=5},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.study{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.study.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time