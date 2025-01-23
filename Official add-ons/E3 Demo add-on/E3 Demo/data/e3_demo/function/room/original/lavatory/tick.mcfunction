execute unless score #lavatory Ticking matches 1 run function #e3_demo:room/original/lavatory/load
execute as @e[tag=player,x=660,y=10,z=34,dx=8,dy=7,dz=14] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=660,y=10,z=34,dx=8,dy=7,dz=14] Room 13
#todelete - old furniture
scoreboard players set #temp Room 13
#/todelete

execute as @e[scores={Room=13},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 661

execute as @a[scores={Room=13}] run function e3_demo:room/original/lavatory/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/lavatory/interactions/room
#/todelete

execute if block 663 14 37 minecraft:oak_trapdoor[open=true] run setblock 659 14 37 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 37 minecraft:oak_trapdoor[open=false] run setblock 659 14 37 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=true] run setblock 659 14 36 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=false] run setblock 659 14 36 minecraft:oak_trapdoor[open=false,facing=west,half=top]

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=13},limit=1] run function e3_demo:room/original/lavatory/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.lavatory.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=13},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.lavatory{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.lavatory.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time