execute unless score #missingno_3 Ticking matches 1 run function #e3_demo:room/original/missingno_3/load
execute as @e[tag=player,x=672,y=110,z=37,dx=10,dy=7,dz=8] unless entity @s[x=672,y=101,z=37,dx=10,dy=7,dz=8] unless entity @s[x=672,y=119,z=37,dx=10,dy=7,dz=8] unless entity @s[scores={Room=19}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=672,y=110,z=37,dx=10,dy=7,dz=8] unless entity @s[x=672,y=101,z=37,dx=10,dy=7,dz=8] unless entity @s[x=672,y=119,z=37,dx=10,dy=7,dz=8] run scoreboard players set @s[tag=!separated_camera] Room 19

execute as @a[scores={Room=19}] run function e3_demo:room/original/missingno_3/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=19},limit=1] run function e3_demo:room/original/missingno_3/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_3.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=19},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_3{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_3.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time