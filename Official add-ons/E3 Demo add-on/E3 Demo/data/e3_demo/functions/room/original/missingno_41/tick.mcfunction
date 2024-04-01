execute unless score #missingno_41 Ticking matches 1 run function #e3_demo:room/original/missingno_41/load
execute as @a[x=736,y=28,z=0,dx=20,dy=7,dz=35] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=736,y=28,z=0,dx=20,dy=7,dz=35] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 57

execute as @a[scores={Room=57}] run function e3_demo:room/original/missingno_41/tick_per_player

function #e3_demo:room/original/missingno_41/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=57},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_41/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_41.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=57},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_41{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_41.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time