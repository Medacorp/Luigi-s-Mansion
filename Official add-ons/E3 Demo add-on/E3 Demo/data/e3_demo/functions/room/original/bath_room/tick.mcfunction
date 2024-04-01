execute unless score #bath_room Ticking matches 1 run function #e3_demo:room/original/bath_room/load
execute as @a[x=648,y=10,z=15,dx=12,dy=7,dz=14] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=648,y=10,z=15,dx=12,dy=7,dz=14] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 12

execute as @e[scores={Room=12}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 649

execute as @a[scores={Room=12}] run function e3_demo:room/original/bath_room/tick_per_player

function #e3_demo:room/original/bath_room/interactions/room

clone 654 12 21 654 16 27 644 12 21

execute if entity @a[tag=!pause_dialog,scores={Room=12},tag=!spectator,limit=1] run function e3_demo:room/original/bath_room/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.bath_room.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=12},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.bath_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.bath_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time