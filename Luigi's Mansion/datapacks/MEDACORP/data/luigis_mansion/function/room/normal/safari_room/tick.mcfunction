execute unless score #safari_room Ticking matches 1 run function #luigis_mansion:room/normal/safari_room/load
execute as @e[tag=player,x=732,y=28,z=-59,dx=14,dy=7,dz=25] unless entity @s[scores={Room=50}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=732,y=28,z=-59,dx=14,dy=7,dz=25] Room 50
#todelete - old furniture
scoreboard players set #temp Room 50
#/todelete

execute as @e[scores={Room=50},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=50}] run function luigis_mansion:room/normal/safari_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/safari_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=50},limit=1] run function luigis_mansion:room/normal/safari_room/ghosts