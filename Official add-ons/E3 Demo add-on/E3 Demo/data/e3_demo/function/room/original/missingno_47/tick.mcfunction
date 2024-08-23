execute unless score #missingno_47 Ticking matches 1 run function #e3_demo:room/original/missingno_47/load
execute as @a[x=682,y=119,z=-10,dx=17,dy=7,dz=35] unless entity @s[scores={Room=63}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=682,y=119,z=-10,dx=17,dy=7,dz=35] Room 63

execute as @a[scores={Room=63}] run function e3_demo:room/original/missingno_47/tick_per_player

execute if entity @a[tag=!pause_dialog,scores={Room=63},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_47/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_47.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=63},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_47{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_47.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time