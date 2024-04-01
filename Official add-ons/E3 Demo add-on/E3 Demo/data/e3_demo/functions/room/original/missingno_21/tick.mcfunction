execute unless score #missingno_21 Ticking matches 1 run function #e3_demo:room/original/missingno_21/load
execute as @a[x=644,y=101,z=38,dx=27,dy=7,dz=18] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=644,y=101,z=38,dx=27,dy=7,dz=18] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 37

execute as @a[scores={Room=37}] run function e3_demo:room/original/missingno_21/tick_per_player

function #e3_demo:room/original/missingno_21/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=37},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_21/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_21.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=37},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_21{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_21.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time