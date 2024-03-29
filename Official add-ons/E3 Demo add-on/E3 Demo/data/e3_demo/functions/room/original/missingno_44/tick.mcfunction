execute unless score #missingno_44 Ticking matches 1 run function #e3_demo:room/original/missingno_44/load
execute as @a[x=699,y=-1,z=-22,dx=13,dy=9,dz=8] unless entity @s[scores={Room=60}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=699,y=-1,z=-22,dx=13,dy=9,dz=8] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 60

execute as @a[scores={Room=60}] run function e3_demo:room/original/missingno_44/tick_per_player

function #e3_demo:room/original/missingno_44/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=60},limit=1] run function e3_demo:room/original/missingno_44/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_44.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=60},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_44{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_44.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time