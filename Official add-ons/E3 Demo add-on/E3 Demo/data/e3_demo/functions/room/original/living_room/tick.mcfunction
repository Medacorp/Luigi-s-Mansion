execute unless score #living_room Ticking matches 1 run function #e3_demo:room/original/living_room/load
execute as @a[x=712,y=19,z=17,dx=17,dy=7,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=19,z=17,dx=17,dy=7,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 3

execute as @a[scores={Room=3}] run function e3_demo:room/original/living_room/tick_per_player

function #e3_demo:room/original/living_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=3},tag=!spectator,limit=1] run function e3_demo:room/original/living_room/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.living_room.time_spent_in
execute if data storage luigis_mansion:data {found_e_gadd:1b} if entity @a[tag=!pause_dialog,scores={Room=3},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.living_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time