execute unless score #bathroom_2 Ticking matches 1 run function #luigis_mansion:room/normal/bathroom_2/load
execute as @e[tag=player,x=648,y=19,z=15,dx=12,dy=7,dz=14] unless entity @s[scores={Room=43}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=648,y=19,z=15,dx=12,dy=7,dz=14] Room 43
#todelete - old furniture
scoreboard players set #temp Room 43
#/todelete

execute as @e[scores={Room=43},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 649

execute as @a[scores={Room=43}] run function luigis_mansion:room/normal/bathroom_2/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/bathroom_2/interactions/room
#/todelete

clone 654 21 21 654 25 27 644 21 21

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=43},limit=1] run function luigis_mansion:room/normal/bathroom_2/ghosts