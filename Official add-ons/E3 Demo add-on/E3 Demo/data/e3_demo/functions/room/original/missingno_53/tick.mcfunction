execute unless score #missingno_53 Ticking matches 1 run function #e3_demo:room/original/missingno_53/load
execute as @a[x=721,y=1,z=-6,dx=21,dy=7,dz=18] unless entity @s[scores={Room=69}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=721,y=1,z=-6,dx=21,dy=7,dz=18] Room 69

execute as @a[scores={Room=69}] run function e3_demo:room/original/missingno_53/tick_per_player

function #e3_demo:room/original/missingno_53/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=69},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_53/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_53.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=69},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_53{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_53.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time