execute unless score #missingno_23 Ticking matches 1 run function #e3_demo:room/original/missingno_23/load
execute as @e[tag=player,x=644,y=101,z=-41,dx=10,dy=7,dz=78] unless entity @s[scores={Room=39}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=644,y=101,z=-41,dx=10,dy=7,dz=78] Room 39

execute as @a[scores={Room=39}] run function e3_demo:room/original/missingno_23/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=39},limit=1] run function e3_demo:room/original/missingno_23/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_23.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=39},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_23{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_23.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time