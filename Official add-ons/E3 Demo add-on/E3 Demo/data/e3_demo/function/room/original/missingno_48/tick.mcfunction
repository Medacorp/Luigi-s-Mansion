execute unless score #missingno_48 Ticking matches 1 run function #e3_demo:room/original/missingno_48/load
execute as @e[tag=player,x=682,y=130,z=-31,dx=31,dy=16,dz=77] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=682,y=130,z=-31,dx=31,dy=16,dz=77] Room 64

execute as @a[scores={Room=64}] run function e3_demo:room/original/missingno_48/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=64},limit=1] run function e3_demo:room/original/missingno_48/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_48.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=64},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_48{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_48.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time