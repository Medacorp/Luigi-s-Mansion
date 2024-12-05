execute unless score #bathroom_1 Ticking matches 1 run function #luigis_mansion:room/hidden/bathroom_1/load
execute as @e[tag=player,x=648,y=10,z=-14,dx=12,dy=7,dz=14] unless entity @s[scores={Room=16}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=648,y=10,z=-14,dx=12,dy=7,dz=14] Room 16
#todelete - old furniture
scoreboard players set #temp Room 16
#/todelete

execute as @e[scores={Room=16},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 649

execute as @a[scores={Room=16}] run function luigis_mansion:room/hidden/bathroom_1/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/bathroom_1/interactions/room
#/todelete

clone 654 12 -7 654 16 -12 644 12 -12

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=16},limit=1] run function luigis_mansion:room/hidden/bathroom_1/ghosts